#!/usr/bin/env ruby

if ARGV.size < 2
  STDERR.puts "Usage: $0 <schema_json_file> <graphql-ruby-git_dir> [output_dir || ./graphql/]"
  exit 1
end

require 'json'
require 'logger'
require 'fileutils'
require 'active_support/core_ext/string/inflections'

$log= Logger.new STDOUT
$log.level = Logger::WARN
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
$out_dir= ARGV.shift || './graphql/'

puts "Schema files in #{$out_dir} will be overwritten.
Implementation files will be created if missing but not overwritten if existing.
"

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

  # List of original names and output files they map to. Both for schema/autogenerated files
  # and for user-modifiable files.
  schema_outputs: {
  },
  outputs: {
  },

  # Contents of output files (schema/autogenerated files, and user-implementable files)
  schema_contents: Hash.new([]),
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
    when 'directives'
      parse_directives v
    when 'types'
      parse_types_1 v
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
  puts 'Done.'

  exit 0
end

#####################################################################
# Helper methods below

def parse_directives(v)
  $log.info "Found %s directives." % [v.size]
  v.each do |d|
    next if d['isDeprecated']

    n= d['name']
    if File.exists? "#{$graphql_ruby_dir}/lib/graphql/directive/#{n}_directive.rb"
      $log.debug "Skipping parsing of directive '#{n}' which is a built-in supported by graphql-ruby."
      next
    end
    #$log.warn "Directive '#{n}' found in schema, but does not appear supported in graphql-ruby, and graphql-ruby currently also does not support defining custom directives. If this directive will appear used anywhere, then this warning will be promoted to an error; continuing."
    $catalog[:problems][:directives][n] = true
  end
end

# First pass of parsing types
def parse_types_1(v)
  #if $catalog[:builtins].keys.size== 0
  # STDERR.puts 'parse_directives() must be called before parse_types_1(); exiting.'
  # exit 1
  #end

  builtins = Dir["#{$graphql_ruby_dir}/lib/graphql/types/*.rb"]
  builtins.each do |b|
    bc = File.read b
    bc =~ /class\s+(\w+)\s+</
    next unless $1
    $log.debug "Registering type '#{$1}' as built-in type supported by graphql-ruby."
    $catalog[:names][$1] = "::GraphQL::Types::#{$1}"
    $catalog[:builtins][$1] = true
    next
  end

  # Do just some basic things here, which need to be done in 1st pass.
  # The types are parsed "for real" later, in pass 2. This 1st pass is here
  # to solve a chicken-or-egg problem.
  v.each do |t|
    next if check_skip(t)

    name = t['name']

    # Do not overwrite (just skip) built-in types
    next if $catalog[:names][name]

    if $catalog[:names][name]
      $log.fatal "Duplicate type name #{name}. This represents an unhandled case in the script and should be looked into manually; exiting."
      exit 1
    end

    $catalog[:names][name] = sgname(t)
    name = $catalog[:names][t['name']]

    # Even though contents will be filled in later, register files for output to disk here.
    of= name.dup
    of.gsub! '::', '/'
    # This is the schema-related part (should be non-modifiable by user)
    $catalog[:schema_outputs][name]= of.underscore

    # This is the implementation-related part (user should add implementation code)
    $catalog[:outputs][name]= of.underscore
  end
end

def parse_types_2(v)
  $log.info "Found total %s types." % [v.size]

  v.each do |t|
    next if check_skip(t)

    orig_name= t['name']
    new_name = $catalog[:names][orig_name]
    unless orig_name and new_name
      STDERR.puts "parse_types_2() did not find a mapping for #{orig_name}; exiting."
      exit 1
    end

    unless new_name
      STDERR.puts "Encountered type #{orig_name} which doesn't appear seen before. Must be an error in parse_types_1(); exiting."
      exit 1
    end

    helper= { 'interfaces' => [], 'possible_types' => []}

    case t['kind']
    when 'ENUM'
      helper['base_type']= 'BaseEnum'
    when 'SCALAR'
      helper['base_type']= 'BaseScalar'
    when 'INPUT_OBJECT'
      helper['base_type']= 'BaseInput'
    when 'INTERFACE'
      helper['base_type']= 'BaseInterface'
    when 'UNION'
      helper['base_type']= 'BaseUnion'
    else
      helper['base_type']= 'BaseObject'
    end

    $catalog[:schema_contents][new_name]= []
    $catalog[:contents][new_name]= []


    # Parse interfaces.
    # This is done here so that any 'include's would appear at the top of generated files.
    if t['interfaces']
      t['interfaces'].each do |i|
        if i['ofType'] or i['kind']!= 'INTERFACE'
          $log.error "Found type #{t['name']} which implements interface #{i['name']}, but can't parse that interface because of its 'kind' and/or 'ofType' fields. This needs to be looked into and improved in the generator script; exiting."
          exit 1
        end
        # XXX i['name'] here makes it impossible to rename an interface via $catalog[:names]
        helper['interfaces'].push i['name']
      end
    end


    # Parse possible types.
    # This is done here so that any 'include's would appear at the top of generated files.
    if t['possibleTypes'] and t['kind']== 'UNION'
      t['possibleTypes'].each do |i|
        if i['ofType'] or i['kind']!= 'OBJECT'
          $log.error "Found type #{t['name']} which has possible type #{i['name']}, but can't parse that type because of its 'kind' and/or 'ofType' fields. This needs to be looked into and improved in the generator script; exiting."
          exit 1
        end
        unless $catalog[:names][i['name']]
          $log.error "Missing name mapping for possible type #{i['name']}. This needs to be looked into/fixed manually in the generator script; exiting."
        end
        helper['possible_types'].push $catalog[:names][i['name']]
      end
    end

    if helper['possible_types'].size> 0
      helper['possible_types_string']= "possible_types \\\n    "+ helper['possible_types'].map{|t| "::Spree::GraphQL::Schema::#{t}"}.join(",\n    ")+ "\n"
      classes_preamble= helper['possible_types'].map{|t| "class Spree::GraphQL::Schema::#{t} < Spree::GraphQL::Schema::Types::BaseObject; end"}.join("\n")+ "\n\n"
      $catalog[:schema_contents][new_name].unshift classes_preamble
    end

    # Prepare type for output by generating its headers for both output files
    helper['description']= t['description'] ? "%q{#{t['description']}}" : 'nil'
    if helper['base_type']== 'BaseInterface'
      $catalog[:schema_contents][new_name].push [template('schema/type_header_module', t, helper)]
    else
      $catalog[:schema_contents][new_name].push [template('schema/type_header', t, helper)]
    end
    $catalog[:contents][new_name].push [template('type_header', t, helper)]

    helper['possible_types']= []
    helper['possible_types_string']= nil


    # Main block - parsing of type's fields
    if t['fields']
      t['fields'].each do |f|
        next if f['isDeprecated']

        chain = []
        if ft = f['type']
          while ft
            chain.unshift ft
            ft = ft['ofType']
          end
        end
        string = ''
        suffix= ''
        chain.each do |t2|
          if t2['kind'] == 'NON_NULL' and !t2['name']; string.sub! /true$/, 'false'
          elsif t2['kind'] == 'LIST' and !t2['name']; string = "[#{string}], null: true"
          else
            ret_name= t2['name']
            if ret_name.sub! /Connection$/, ''
              suffix = '.connection_type'
            end
            ret_name= $catalog[:names][ret_name]
            unless ret_name
              STDERR.puts "No name map for #{t2['name']}. Check that you are properly looking up entries in $catalog[:names] Hash; exiting."
              exit 1
            end

            $catalog[:depends][new_name] ||= {}
            $catalog[:depends][new_name][ret_name] = true
            if (new_name != ret_name) && ($catalog[:depends][ret_name]) && ($catalog[:depends][ret_name][new_name])
              $log.info "Class #{new_name} depends on #{ret_name} and vice-versa. Will handle accordingly."
              helper['schema_preamble']= "class Spree::GraphQL::Schema::#{ret_name} < Spree::GraphQL::Schema::Types::BaseObject; end\n\n"
              #helper['preamble']= "module Spree::GraphQL::#{ret_name}; end\n\n"
            end

            unless ret_name=~ /^::/
              ret_name= '::Spree::GraphQL::Schema::'+ ret_name
            end

            string = "#{ret_name+ suffix}, null: true"
          end
        end # chain.each do |t2|

        # graphql-ruby has two specifics:
        # 1) Types have null: true/false
        # 2) Additionally, in lists of type, the 'null: false' is default and not allowed to be specified
        # So the following is needed to comply with that:
        string.gsub! ', null: false]', ']'

        helper['type_name']= string
        if helper['schema_preamble']
          arr= $catalog[:schema_contents][new_name]
          arr.unshift helper['schema_preamble'] unless arr.include? helper['schema_preamble']
          helper['schema_preamble']= nil
        end
        if helper['preamble']
          arr= $catalog[:contents][new_name]
          arr.unshift helper['preamble'] unless arr.include? helper['preamble']
          helper['preamble']= nil
        end
        helper['description']= f['description'] ? "%q{#{f['description']}}" : 'nil'
        $catalog[:schema_contents][new_name].push template 'schema/field_header', f, helper

        method_args= []
        method_args_desc= []
        args = f['args']
        if args
          args.each do |f|
            next if f['isDeprecated']
            if suffix=~ /connection/
              next if %w/first last before after pageInfo/.include? f['name']
            end

            helper2 = {}
            chain = []
            if ft = f['type']
              while ft
                chain.unshift ft
                ft = ft['ofType']
              end
            end
            string= ''
            chain.each do |t2|
              if t2['kind'] == 'NON_NULL' and !t2['name']; string.sub! /false$/, 'true'
              elsif t2['kind'] == 'LIST' and !t2['name']; string = "[#{string}], required: false"
              else
                arg_type= t2['name']
                suffix = ''
                if arg_type.sub! /Connection$/, ''
                  suffix = '.connection_type'
                end
                helper2 = { 'name' => arg_type.underscore }
                method_args.push [f['name'].underscore+ ':']
                arg_type = $catalog[:names][arg_type]
                unless arg_type=~ /^::/
                  arg_type= '::Spree::GraphQL::Schema::'+ arg_type
                end
                string = "#{arg_type + suffix}, required: false"
              end
            end

            # graphql-ruby has two specifics:
            # 1) Types have null: true/false, while arguments have required: true/false
            # 2) Additionally, in lists of type, the 'null: false' is default and not allowed to be specified
            # So the following is needed to comply with that:
            string.gsub! ', required: true]', ']' # 'null: false]'
            string.gsub! ', required: false]', ']'

            helper2['type_name']= string
            # Determine if default value needs to be set
            if helper2['type_name']!~ /required: true/
              helper2[:default_value]= ' nil'
            end
            #if f['defaultValue']
            #  if f['defaultValue']=~ /^(?:\d+(?:\.\d+)?|false|true)$/
            #    method_args[-1].push f['defaultValue']
            #  else
            #    method_args[-1].push %q{'}+ f['defaultValue']+ %q{'}
            #  end
            #else
            #  if !(string=~ /required: true/)
            #    method_args[-1].push 'nil'
            #  end
            #end
            if f['defaultValue']
              val=
                (if f['defaultValue']=~ /^(?:\d+(?:\.\d+)?|false|true)$/
                  f['defaultValue']
                else
                  %q{'}+ f['defaultValue']+ %q{'}
                end)
              helper2['default_value_string']= ' default_value: '+ val+ ','
              method_args_desc.push [f['name'].underscore, val]
            #else
            #  helper2['default_value_string']= ''
            end
            helper2['description']= f['description'] ? "%q{#{f['description']}}" : 'nil'
            $catalog[:schema_contents][new_name].push template 'schema/argument', f, helper2
          end
        end # if f['args']
        $catalog[:schema_contents][new_name].push template 'schema/field_footer'

        helper['description']= f['description'] ? "%q{%{f['description']}}" : 'nil'
        helper['method_args_string']= '(' + method_args.map{|a| a[0]}.join(', ')+ ')'
        helper['method_args_description']= method_args_desc.map{|a| a.join ' = '}.join(', ')
        if helper['method_args_description'].size>0
          helper['method_args_description']= "\n  # Defaults: "+ helper['method_args_description']
        end
        $catalog[:contents][new_name].push template 'field', f, helper
      end # t['fields'].each
    end # endif t['fields']


    # Parsing of type's input fields (they behave like arguments and code is basically copy-paste)
    method_args= []
    method_args_desc= []
    fields = t['inputFields']
    if fields
      fields.each do |f|
        next if f['isDeprecated']

        helper2 = {}
        chain = []
        if ft = f['type']
          while ft
            chain.unshift ft
            ft = ft['ofType']
          end
        end
        string= ''
        chain.each do |t|
          if t['kind'] == 'NON_NULL' and !t['name']; string.sub! /false$/, 'true'
          elsif t['kind'] == 'LIST' and !t['name']; string = "[#{string}], required: false"
          else
            arg_type= t['name']
            suffix = ''
            if arg_type.sub! /Connection$/, ''
              suffix = '.connection_type'
            end
            helper2 = { 'name' => arg_type.underscore }
            method_args.push [f['name'].underscore+ ':']
            arg_type = $catalog[:names][arg_type]
            unless arg_type=~ /^::/
              arg_type= '::Spree::GraphQL::Schema::'+ arg_type
            end
            string = "#{arg_type + suffix}, required: false"
          end
        end

        # graphql-ruby has two specifics:
        # 1) Types have null: true/false, while arguments have required: true/false
        # 2) Additionally, in lists of type, the 'null: false' is default and not allowed to be specified
        # So the following is needed to comply with that:
        string.gsub! ', required: true]', ']' # , null: true]'
        string.gsub! ', required: false]', ']'

        helper2['type_name']= string
        # Determine if default value needs to be set
        if helper2['type_name']!~ /required: true/
          helper2[:default_value]= ' nil'
        end
        #if f['defaultValue']
        #  if f['defaultValue']=~ /^(?:\d+(?:\.\d+)?|false|true)$/
        #    method_args[-1].push f['defaultValue']
        #  else
        #    method_args[-1].push %q{'}+ f['defaultValue']+ %q{'}
        #  end
        #else
        #  if !(string=~ /required: true/)
        #    method_args[-1].push 'nil'
        #  end
        #end
        if f['defaultValue']
          val=
            (if f['defaultValue']=~ /^(?:\d+(?:\.\d+)?|false|true)$/
              f['defaultValue']
            else
              %q{'}+ f['defaultValue']+ %q{'}
            end)
          helper2['default_value_string']= ' default_value: '+ val+ ','
          method_args_desc.push [f['name'].underscore, val]
        #else
        #  helper2['default_value_string']= ''
        end
        helper2['description']= f['description'] ? "%q{#{f['description']}}" : 'nil'
        $catalog[:schema_contents][new_name].push template 'schema/input_field', f, helper2
      end
    end # if f['inputFields']
    helper['description']= t['description'] ? "%q{#{t['description']}}" : 'nil'
    helper['method_args_string']= '(' + method_args.map{|a| a.join ' '}.join(', ')+ ')'
    helper['method_args_description']= method_args_desc.map{|a| a.join ' = '}.join(', ')
    if helper['method_args_description'].size>0
      helper['method_args_description']= "\n  # Defaults: "+ helper['method_args_description']
    end
    $catalog[:contents][new_name].push template 'field', t, helper


    # Parse enum values
    if t['enumValues']
      t['enumValues'].each do |v|
        next if v['isDeprecated']
        helper['description']= v['description'] ? "%q{#{v['description']}}" : 'nil'
        $catalog[:schema_contents][new_name].push template 'schema/enum_value', v, helper
      end
    end

    $catalog[:schema_contents][new_name].push template 'schema/type_footer'
    $catalog[:contents][new_name].push template 'type_footer'
  end
end

def sgname(t)
  name = t['name'].dup

  # If name has already been figured out.
  if $catalog[:names][name]
    return $catalog[:names][name]
  end

  ret= ( if t['kind'] == 'INTERFACE'
    name.sub! /Interface$/, ''
    'Interfaces::'
  elsif t['kind'] == 'INPUT_OBJECT' || t['name'] =~ /Input(?:V\d+)?$/
    name.sub! /Input(V\d+)?$/, '\1'
    'Inputs::'
  elsif t['name'] =~ /Payload(?:V\d+)?$/
    name.sub! /Payload(V\d+)?$/, '\1'
    'Payloads::'
  else
    name.sub! /Connection$/, ''
    'Types::'
  end ) + name
  if !ret
    STDERR.puts "sgname() failed for #{t['name']}; exiting."
    exit 1
  end
  ret
end

def output_files
  # We know how query and mutation type are called, and can already generate schema.rb
  name= 'Schema'
  $catalog[:schema_contents][name] = template('schema', { 'query' => $query, 'mutation' => $mutation})
  $catalog[:schema_outputs][name] = 'schema'

  name= 'Types::BaseObject'
  $catalog[:schema_contents][name]= template('schema/types/base_object')
  $catalog[:schema_outputs][name]= 'types/base_object'
  # User part:
  $catalog[:contents][name]= template('types/base_object')
  $catalog[:outputs][name]= 'types/base_object'

  name= 'Types::BaseEnum'
  $catalog[:schema_contents][name]= template('schema/types/base_enum')
  $catalog[:schema_outputs][name]= 'types/base_enum'
  # User part:
  $catalog[:contents][name]= template('types/base_enum')
  $catalog[:outputs][name]= 'types/base_enum'

  name= 'Types::BaseScalar'
  $catalog[:schema_contents][name]= template('schema/types/base_scalar')
  $catalog[:schema_outputs][name]= 'types/base_scalar'
  # User part:
  $catalog[:contents][name]= template('types/base_scalar')
  $catalog[:outputs][name]= 'types/base_scalar'

  name= 'Types::BaseInterface'
  $catalog[:schema_contents][name]= template('schema/types/base_interface')
  $catalog[:schema_outputs][name]= 'types/base_interface'
  # User part:
  $catalog[:contents][name]= template('types/base_interface')
  $catalog[:outputs][name]= 'types/base_interface'

  name= 'Types::BaseUnion'
  $catalog[:schema_contents][name]= template('schema/types/base_union')
  $catalog[:schema_outputs][name]= 'types/base_union'
  # User part:
  $catalog[:contents][name]= template('types/base_union')
  $catalog[:outputs][name]= 'types/base_union'

  name= 'Types::BaseInput'
  $catalog[:schema_contents][name]= template('schema/types/base_input')
  $catalog[:schema_outputs][name]= 'types/base_input'
  # User part:
  $catalog[:contents][name]= template('types/base_input')
  $catalog[:outputs][name]= 'types/base_input'

  # Output schema parts:
  $catalog[:schema_outputs].each do |name, file|
    content = $catalog[:schema_contents][name]
    content = (Array === content) ? content.flatten.join('') : content
    outfile = "#{$out_dir}/schema/#{file}.rb"
    FileUtils.mkdir_p File.dirname outfile
    File.open(outfile, 'w') { |f| f.write content }
  end

  # Output user parts:
  $catalog[:outputs].each do |name, file|
    content = $catalog[:contents][name]
    content = (Array === content) ? content.flatten.join('') : content
    outfile = "#{$out_dir}/#{file}.rb"
    FileUtils.mkdir_p File.dirname outfile
    if !File.exists? outfile
      File.open(outfile, 'w') { |f| f.write "#{content}\n" }
    else
      $log.debug "Not overwriting #{outfile}"
    end
  end

  # Output total file list:
  outfile = "#{$out_dir}/file_list.rb"
  FileUtils.mkdir_p File.dirname outfile
  File.open(outfile, 'w') { |f| f.write template('file_list.rb') +
    $catalog[:outputs].values.map{|f| %Q{require_relative "./#{f}"}}.join("\n") + "\n\n" +
    $catalog[:schema_outputs].values.map{|f| %Q{require_relative "./schema/#{f}"}}.join("\n")
  }
end

# Beware here that all variable interpolations must pass. E.g., if you have
# `type['name'].underscore` in any part of content, then either all calls to template()
# must have `type['name']` non-nil, or you need to wrap it into (type['name']||'').underscore.
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

},
# Schema parts:
'schema' => "class Spree::GraphQL::Schema::Schema < GraphQL::Schema
  query ::Spree::GraphQL::Schema::Types::#{type['query']}
  mutation ::Spree::GraphQL::Schema::Types::#{type['mutation']}

  #def self.resolve_type(type, obj, ctx)
  #end

  #def self.object_from_id(node_id, ctx)
  #end

  #def self.id_from_object(object, type, ctx)
  #end
end
",
'schema/type_header' => "class Spree::GraphQL::Schema::#{$catalog[:names][type['name']]} < Spree::GraphQL::Schema::Types::#{helper['base_type'] || 'BaseObject'}
  graphql_name '#{type['name']}'
  description #{helper['description']}
#{(helper['interfaces']||[]).map{|i| "  implements ::Spree::GraphQL::Schema::Interfaces::#{i}"}.join "\n"}
  #{helper['possible_types_string']}
  include ::Spree::GraphQL::#{$catalog[:names][type['name']]}
",
'schema/type_header_module' => "module Spree::GraphQL::Schema::#{$catalog[:names][type['name']]}
  include ::Spree::GraphQL::Schema::Types::#{helper['base_type'] || 'BaseObject'}
  graphql_name '#{type['name']}'
  description #{helper['description']}
#{(helper['interfaces']||[]).map{|i| "  implements ::Spree::GraphQL::Schema::Interfaces::#{i}"}.join "\n"}
  #{helper['possible_types_string']}
  include ::Spree::GraphQL::#{$catalog[:names][type['name']]}

  definition_methods do
  end
",
'schema/field_header' => "
  field :#{(type['name'] || '').underscore}, #{helper['type_name']} do
    description #{helper['description']}
",
'schema/argument' => "    argument :#{(type['name']||'').underscore}, #{helper['type_name']},#{helper['default_value_string']} description: #{helper['description']}\n",
'schema/input_field' => "  argument :#{(type['name']||'').underscore}, #{helper['type_name']},#{helper['default_value_string']} description: #{helper['description']}\n",
'schema/enum_value' => "  value '#{type['name']}', #{helper['description']}\n",
'schema/field_footer' => "  end",
'schema/type_footer' => "\nend\n",
'schema/types/base_object' => 'class Spree::GraphQL::Schema::Types::BaseObject < GraphQL::Schema::Object
  include ::Spree::GraphQL::Types::BaseObject
end
',
'schema/types/base_enum' => 'class Spree::GraphQL::Schema::Types::BaseEnum < GraphQL::Schema::Enum
  include ::Spree::GraphQL::Types::BaseEnum
end
',
'schema/types/base_scalar' => 'class Spree::GraphQL::Schema::Types::BaseScalar < GraphQL::Schema::Scalar
  include ::Spree::GraphQL::Types::BaseScalar
end
',
'schema/types/base_interface' => 'module Spree::GraphQL::Schema::Types::BaseInterface
  include ::GraphQL::Schema::Interface
  include ::Spree::GraphQL::Types::BaseInterface
end
',
'schema/types/base_union' => 'class Spree::GraphQL::Schema::Types::BaseUnion < GraphQL::Schema::Union
  include ::Spree::GraphQL::Types::BaseUnion
end
',
'schema/types/base_input' => 'class Spree::GraphQL::Schema::Types::BaseInput < GraphQL::Schema::InputObject
end
',
# User parts:
'types/base_object' => 'module Spree::GraphQL::Types::BaseObject
end
',
'types/base_enum' => 'module Spree::GraphQL::Types::BaseEnum
end
',
'types/base_scalar' => 'module Spree::GraphQL::Types::BaseScalar
end
',
'types/base_input' => 'module Spree::GraphQL::Types::BaseInput
end
',
'types/base_interface' => 'module Spree::GraphQL::Types::BaseInterface
end
',
'types/base_union' => 'module Spree::GraphQL::Types::BaseUnion
end
',
'type_header' => "module Spree::GraphQL::#{$catalog[:names][type['name']]}
#{(helper['interfaces']||[]).map{|i| "  include ::Spree::GraphQL::Interfaces::#{i}"}.join "\n"}
",
'field' => "
  # #{(type['description']||'').gsub /\s*\n+\s*/, ' '}#{helper['method_args_description']}
  # Returns: #{(helper['type_name']||'').gsub /::Spree::GraphQL::Schema::/, ''}
  def #{(type['name'] || '').underscore}#{helper['method_args_string']}
    raise ::Spree::GraphQL::NotImplementedError.new
  end
",
'type_footer' => "\nend\n",
}[file]
end

def check_skip(t)
  # This method is only called for toplevel types. And in them, we are not
  # interested in Connection/Edge types.
  return true if (t['name']=~ /(?:Connection|Edge)$/) || (t['name']=~ /^__/) || ($catalog[:builtins][t['name']]) || t['isDeprecated']
  false
end

####
run