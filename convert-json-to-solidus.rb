#!/usr/bin/env/ruby

if ARGV.size < 2
  STDERR.puts "Usage: $0 <schema_json_file> <graphql-ruby-git_dir> [output_dir || ./graphql/]"
  exit 1
end

require 'json'
require 'logger'
require 'fileutils'
require 'active_support/core_ext/string/inflections'

$log= Logger.new STDOUT
$log.level = Logger::DEBUG
$log.formatter = proc do |severity, datetime, progname, msg| "#{severity.to_s}: #{msg}\n" end

# Schema contains:
# 1) Names of query, mutation, and subscription entry point types
# 2) Types and directives (of which types include almost everything -- query types, mutation types, input types, and response/payload types)
#
# Therefore, obviously types are by far the largest group.
# In Solidus GraphQL API, we split out 3 sub-types into their own directories: interfaces, input objects, and payloads.
# And even though they are all types, we give them different prefix: Interfaces::X, Inputs::X, and Payloads::X.

# Load schema Hash into $schema
schema_text= File.read ARGV.shift
#schema_text.gsub! /hopify.com/, 'olidus.io'
schema_text.gsub! /hopify(?!\.com)/, 'tore'
schema = JSON.parse schema_text
$schema = schema['data']['__schema']

# Define where is the Git checkout of rmosolgo's graphql-ruby
$graphql_ruby_dir= ARGV.shift

# Define directory where generated files will be output, defaults to ./graphql
$out_dir= ARGV.shift || 'graphql'

# Names of query/mutation/subscription entry points
$query= $mutation= $subscription= nil

# Hash containing a 'catalog' of a bunch of stuff for looking up during execution.
$catalog = {

  # Mapping of types in schema to our types.
  #
  # In general, almost everything in GraphQL is a type. However, as mentioned we
  # sub-divide types into 1) interfaces, 2) inputs, 3) payloads, and 4) all other types.
  # We also set class name to be <type>::<name>, such as Interfaces::Node.
  # Because of that, when the code starts, it needs to do a first pass through all types
  # to figure out what sub-type/full name in Solidus GraphQL they map to.
  # E.g.:
  # 'AppliedDiscount' => 'Interfaces::AppliedDiscount'
  #
  # Also, this list is used to map built-in types to the same value, since they don't need to
  # get any custom prefix.
  # (The list of these built-in types in populated automatically from data found in graphql-ruby.)
  #
  # Also, this list can be used to remap any type to any other/different name in Solidus' GraphQL, if needed.
  names: {
    'ID' => 'ID'
  },

  # List of original names and output files they map to
  outputs: {
  },

  # Contents of output files
  contents: Hash.new([]),

  # Dependencies -- used to detect/solve circular dependencies
  # Format is: ClassAString => ClassBString
  # E.g.   Checkout => Customer, Customer => Checkout
  depends: {},

  # List of built-in types.
  # Format: TypeNameString => true
  builtins: {},

  # This lists any problems found during parsing which may affect the
  # success of conversion of JSON schema to .rb files. Currently used/populated
  # but without any practical effect.
  problems: {
    directives: {},
  },
}

# Output contents that will in the end be dumped to files on disk.
# Format is one of:
# $output[relative file name] = "string of lines"
# $output[relative file name] = [ [lines], [lines], [lines] ]
# Any sub-arrays will be flattened before output. If present, they are used
# to conveniently control where lines will be inserted into the contents.
$output = {}

# This is the entry point into the program. It invokes all necessary functions,
# writes results to disk and exits.
def run
  $schema.each do |k, v|
    case k
    when 'queryType'
      $query= v['name'] if v
    when 'mutationType'
      $mutation= v['name'] if v
    when 'subscriptionType'
      $subscription= v['name'] if v
    when 'types'
      parse_types_1 v
    when 'directives'
      parse_directives v
    else
      STDERR.puts "Unrecognized schema element '#{k}'. This probably means that the parser file '#{$0}' needs to be updated to support it."
      exit 1
    end
  end

  # Now we are certain that $query/$mutation/$subscription are filled in.
  # They contain the names of types that serve as entry points into the respective parts of schema.
  if !$query; $log.fatal "Did not find name of query entry in JSON schema; exiting."; exit 1 end
  if !$mutation; $log.fatal "Did not find name of mutation entry in JSON schema; exiting."; exit 1 end
  if $subscription
    $log.error "Found a 'subscription' entry point. Previously this wasn't present, so an update to '#{$0}' is needed to support it. For implementation, see existing implementations for queries and mutations; exiting."
    exit 1
  end

  # Let's now parse all types. This is the pass 2 of type parsing.
  parse_types_2 $schema['types']

  # And now we can output all files to disk.
  output_files()

  #pp $catalog

  exit 0
end

#####################################################################
# Helper methods below

def parse_directives(v)
  $log.info "Found %s directives." % [v.size]
  v.each do |d|
    n= d['name']
    if File.exists? "#{$graphql_ruby_dir}/lib/graphql/directive/#{n}_directive.rb"
      $log.debug "Skipping parsing of directive '#{n}' which is a built-in supported by graphql-ruby."
      next
    end
    $log.warn "Directive '#{n}' found in schema, but does not appear supported in graphql-ruby, and graphql-ruby currently also does not support defining custom directives. If this directive will appear used anywhere, then this warning will be promoted to an error; continuing."
    $catalog[:problems][:directives][n] = true
  end
end

# First pass of parsing types
def parse_types_1(v)
  # Do just some basic things here, which need to be done in 1st pass.
  # The types are parsed "for real" later, in pass 2. This 1st pass is here
  # to solve a chicken-or-egg problem.
  v.each do |t|
    next if t['name']=~ /(?:Connection|Edge)$/
    next if t['name']=~ /^__/;
    next if $catalog[:names][t['name']]

    name = t['name']

    if $catalog[:names][name]
      $log.fatal "Duplicate type name #{name}. This represents an unhandled case in the script and should be looked into manually; exiting."
      exit 1
    end

    $catalog[:names][name] = sgname(t)
    name = $catalog[:names][name]

    of= name.dup
    of.gsub! '::', '/'
    $catalog[:outputs][name]= of.underscore
  end

  # Before parsing any types, we need to establish which built-ins exist.
  # Technically this would be done before parsing all the types above,
  # but then our safety check for duplicate type names (seen above) would
  # be harder to write. So we allow built-in types to be parsed second,
  # and to just overwrite any defaults that the previous block has inserted.
  builtins = Dir["#{$graphql_ruby_dir}/lib/graphql/types/*.rb"]
  builtins.each do |b|
    bc = File.read b
    bc =~ /class\s+(\w+)\s+</
    next unless $1
    $log.debug "Registering type '#{$1}' as built-in type supported by graphql-ruby."
    $catalog[:names][$1] = $1
    $catalog[:builtins][$1] = true
    next
  end
end

def parse_types_2(v)
  $log.info "Found total %s types." % [v.size]

  v.each do |t|
    n= t['name']
    # Skip built-in types supported by graphql-ruby
    if $catalog[:builtins][n]
      next
    end
    if n=~ /^__/
      $log.debug "Skipping introspection element '#{n}'; parsing not applicable."
      next
    end
    if n=~ /Edge|Connection$/
      $log.debug "Skipping connection-related element '#{n}'; parsing not needed."
      next
    end

    n= $catalog[:names][n]
    unless n
      STDERR.puts "Encountered type #{t['name']} which doesn't appear seen before." # XXX fix error msg
      exit 1
    end

    $catalog[:contents][n]= template('type_header', t)

    depends= []
    helper= {}

    # Main block - parsing of type's fields
    if t['fields']
      t['fields'].each do |f|

        chain = []
        if ft = f['type']
          while ft
            chain.unshift ft
            ft = ft['ofType']
          end
        end
        string = ''
#        chain.each do |t2|
#          if t2['kind'] == 'NON_NULL' and !t2['name']; string.sub! /true$/, 'false'
#          elsif t2['kind'] == 'LIST' and !t2['name']; string = "[#{string}], null: true"
#          else
#            suffix= ''
#            name= t2['name'].dup
#            if name.sub! /Connection$/, ''
#              suffix = '.connection_type'
#            end
#            name = $catalog[:names][name]
#            unless name
#              STDERR.puts "No name map for #{t2['name']}"
#              pp $catalog
#              exit 1
#            end
#
#            $catalog[:depends][t['name']] ||= {}
#            $catalog[:depends][t['name']][t2['name']] = true
#            if (t['name'] != t2['name']) && ($catalog[:depends][t2['name']]) && ($catalog[:depends][t2['name']][t['name']])
#              $log.info "Class #{t['name']} depends on #{t2['name']} and vice-versa. Will handle accordingly."
#              helper['preamble']= "class Spree::GraphQL::#{name} < Spree::GraphQL::Types::BaseObject; end\n"
#            end
#
#            kind= $catalog[:names][t2['name']] || ''
#            string = "#{$catalog[:names][name] || ( kind + name + suffix)}, null: true"
#          end
#        end
#        helper['type_name']= string
#        if helper['preamble']
#          $output[outfile].unshift helper['preamble']
#        end
#        $output[outfile].push template 'field_header', f, helper
#
#          if f['args']
#            $output[outfile].push ''
#            f['args'].each do |f|
#              helper = { 'name' => f['name'].underscore}
#              #helper['by'] = ([$query, $mutation, $subscription].include? n) ? 'All' : "By#{name_to_class n}"
#
#              chain = []
#              if ft = f['type']
#                while ft
#                  chain.unshift ft
#                  ft = ft['ofType']
#                end
#              end
#              string = ''
#              chain.each do |t|
#                if t['kind'] == 'NON_NULL' and !t['name']; string.sub! /false$/, 'true'
#                elsif t['kind'] == 'LIST' and !t['name']; string = "[#{string}], required: false"
#                else
#                  name = t['name']
#                  suffix = ''
#                  if name.sub! /Input(V\d+)?$/, '\1'
#                    #name= 'Inputs::'+ name
#                  elsif name.sub! /Payload(V\d+)?$/, '\1'
#                    #name= 'Payloads::'+ name
#                  # Not sure if this case will ever happen, but here for consistency
#                  elsif name.sub! /Connection$/, ''
#                    suffix = '.connection_type'
#                  end
#
#                  kind= $catalog[:names][t['name']] || ''
#                  string = "#{$catalog[:names][name] || ( kind + name + suffix)}, required: false"
#                end
#              end
#              helper['type_name']= string
#              $output[outfile].push template 'argument', f, helper
#            end
#          end
#        $output[outfile].push template 'field_footer'
      end # endif t['fields'].each
    end # endif t['fields']
    #$output[outfile].push template 'type_footer'
  end
end

def sgname(t)
  name = t['name']
  ( if t['kind'] == 'INTERFACE'
    name.sub! /Interface$/, ''
    'Interfaces::'
  elsif t['kind'] == 'INPUT_OBJECT' || t['name'] =~ /Input(V\d+)?$/
    name.sub! /Input$/, ''
    'Inputs::'
  elsif t['name'] =~ /Payload(V\d+)?$/
    name.sub! /Payload$/, ''
    'Payloads::'
  else
    'Types::'
  end ) + name
end

def output_files
  # We know how query and mutation type are called, and can already generate schema.rb
  f= 'schema.rb'
  $output[f] = template(f, { 'query' => $query, 'mutation' => $mutation})

  outfile= 'types/base_object.rb'
  $output[outfile]= template(outfile)

  $catalog[:outputs].each do |name, file|
    content = $catalog[:contents][name]
    content = (Array === content) ? content.flatten.join('') : content
    outfile = "#{$out_dir}/#{file}.rb"
    FileUtils.mkdir_p File.dirname outfile
    File.open(outfile, 'w') { |f| f.write content }
  end

  outfile = "#{$out_dir}/file_list.rb"
  File.open(outfile, 'w') { |f| f.write template('file_list.rb') + $output.keys.map{|f| %Q{require_relative "./#{f}"}}.join("\n") }
end

def template(file, type = {}, helper = {})
{
'file_list.rb' => %q{# This file lists all the files that were auto-generated.
# It cannot be used as-is because the order of includes
# does not represent actual dependencies between files.
#
# Use it only for convenience to easily spot additions
# or removals in the list of files and to then update file
# all.rb manually, taking the necessary order of includes
# into account.

require 'graphql'

module Spree
  module GraphQL
    module Inputs
    end
    module Interfaces
    end
    module Payloads
    end
    module Types
    end
  end
end

},
'schema.rb' => "module Spree
  module GraphQL
    class Schema < ::GraphQL::Schema
      query ::Spree::GraphQL::Types::#{type['query']}
      mutation ::Spree::GraphQL::Types::#{type['mutation']}
    end
  end
end
",
'type_header' => "class Spree::GraphQL::#{$catalog[:names][type['name']]} < Types::BaseObject\n",
'field_header' => "
  field :#{helper['name']}, #{helper['type_name']} do
    description %q{#{type['description']}}
",
'argument' => "  argument :#{helper['name']}, #{helper['type_name']}\n",
'field_footer' => "  end",
'type_footer' => "\nend\n",
'types/base_object.rb' => 'module Spree::GraphQL::Types::BaseObject < ::GraphQL::Schema::Object
  global_id_field :id
end
',
}[file]
end

def name_to_class(n)
  n.sub! /^(?:Connection)$/, ''
  n.camelize
end

####
run
