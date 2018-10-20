#!/usr/bin/env/ruby

require 'json'
require 'logger'
require 'fileutils'
require 'active_support/core_ext/string/inflections'

$log= Logger.new STDOUT
$log.level = Logger::DEBUG

if ARGV.size < 2
  STDERR.puts "Usage: $0 <schema_file> <graphql-ruby-git_dir> [output_dir || ./graphql/]"
  exit 1
end


# Schema contains query/mutation/subscription entry point names, types, and directives.
# Types are by far the largest group.

schema_text= File.read ARGV.shift
#schema_text.gsub! /hopify.com/, 'olidus.io'
schema_text.gsub! /hopify(?!\.com)/, 'tore'
schema = JSON.parse schema_text
$schema = schema['data']['__schema']

$graphql_ruby_dir= ARGV.shift

# Directory where generated files will be output
$out_dir= ARGV.shift || 'graphql'

# Names of query/mutation/subscription entry points
$query= $mutation= $subscription= nil

# Hash with a 'catalog' of a bunch of stuff, for looking up during execution.
$catalog = {
  queries: {},
  mutations: {},
  subscriptions: {},

  problems: {
    directives: {},
    #queries: {},
    #mutations: {},
    #subscriptions: {},
  },
}

# Output contents that will in the end be dumped to files on disk
# Format is $output[relative file name] = [ [lines], [lines], [lines] ]
# Any sub-arrays will be flattened before output. If present, they can be
# conveniently used to control where lines are inserted into the contents.
$output = {}

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
    when 'directives'
      parse_directives v
    else
      STDERR.puts "Unrecognized schema element '#{k}'. This probably means that the parser file '#{$0}' needs to be updated to support it."
      exit 1
    end
  end

  # Now we are certain that $query/$mutation/$subscription are filled in.
  if !$query; $log.fatal "Did not find name of query entry in JSON schema; exiting."; exit 1 end
  if !$mutation; $log.fatal "Did not find name of mutation entry in JSON schema; exiting."; exit 1 end
  if $subscription
    $log.error "Found a 'subscription' entry point. Previously this wasn't present, so an update to '#{$0}' is needed to support it. For implementation, see existing implementations for queries and mutations; exiting."
    exit 1
  end

  # We know how query and mutation type are called, and can already generate schema.rb
  f= new 'schema.rb'
  $output[f] = template(f, { 'query' => $query, 'mutation' => $mutation})

  # Let's now parse all types
  parse_types $schema['types']

  # We can now output all files
  output_files()
end

#####################################################################
# Helper methods below

def parse_directives(v)
  $log.info "Found %s directives." % [v.size]
  v.each do |d|
    n= d['name']
    if File.exists? "#{$graphql_ruby_dir}/lib/graphql/directive/#{n}_directive.rb"
      $log.debug "Skipping directive '#{n}' which appears to be a built-in supported by graphql-ruby"
      next
    end
    $log.warn "Directive '#{n}' found in schema, but does not appear supported in graphql-ruby, and graphql-ruby currently also does not support defining custom directives. If this directive will appear used anywhere, then this warning will be promoted to an error."
    $catalog[:problems][:directives][n] = true
  end
end

def parse_types(v)
  $log.info "Found total %s types." % [v.size]
  stats = Hash.new 0
  v.each do |t|
    n= t['name']
    # Skip built-in types supported by graphql-ruby
    if File.exists? "#{$graphql_ruby_dir}/lib/graphql/types/#{n.downcase}.rb"
      $log.debug "Skipping type '#{n}' which appears to be a built-in supported by graphql-ruby"
      next
    end
    if n=~ /^__/
      $log.debug "Skipping introspection element '#{n}'"
      next
    end
    #puts n

    # Convert any case (a mix of camelCase and CamelCase) to snake_case
    #un = n.underscore

    ## See if this is an auxiliary type
    #aux = false
    #un.sub!(/_v\d+$/, '')
    #while un.sub!(/_v\d+$/, '') or un.sub! /_(?:payload|input|edge|connection|add|append|update|remove|delete|renew|create|activate|reset|recover|sort_keys)$/, ''
    #  aux = true
    #end
    #stats[un]+= 1

    # Determine exact type of this type
    dir = 'types'
    helper = { 'group' => 'Types'}
    if t['kind'] == 'INTERFACE'
      dir= 'interfaces'
      helper['group']= 'Interfaces'
    elsif t['kind'] == 'INPUT_OBJECT'
      dir= 'inputs'
      helper['group']= 'Inputs'
    #elsif t['kind'] == 'SCALAR'
    # dir= 'scalar_types'
    # helper['group']= 'ScalarTypes'
    elsif n.sub!(/Input(V\d+)?$/, '\1')
      dir= 'inputs'
      helper['group']= 'Inputs'
      $log.warn "Found type '#{t['name']}' which appears to be (and which we'll treat as) an input type, but it does not have 'kind' set to INPUT_OBJECT"
    elsif n.sub!(/Payload(V\d+)?$/, '\1')
      dir= 'payloads'
      helper['group']= 'Payloads'
    end

    n.sub!(/(?:Input|Payload)(V\d+)?$/, '\1')

    outfile= "#{dir}/#{n.underscore}.rb"

    $output[outfile] ||= []
    $output[outfile].push template 'type_header', t, helper

    if t['fields']
      $output[outfile].push ''
      t['fields'].each do |f|
        helper = { 'name' => f['name'].underscore}
        helper['by'] = ([$query, $mutation, $subscription].include? n) ? 'All' : "By#{name_to_class n}"

        chain = []
        if ft = f['type']
          while ft
            chain.unshift ft
            ft = ft['ofType']
          end
        end
        string = ''
        chain.each do |t|
          # Implementation 1:
          #if t['kind'] == 'NON_NULL' and !t['name']; string= "#{string}, null: false"
          #elsif t['kind'] == 'LIST' and !t['name']; string = "[#{string}]"
          #else string = "#{t['name']}"
          #end

          # Implementation 2:
          if t['kind'] == 'NON_NULL' and !t['name']; string.sub! /true$/, 'false'
          elsif t['kind'] == 'LIST' and !t['name']; string = "[#{string}], null: true"
          else
            name = t['name']
            if name.sub! /Input(V\d+)?$/, '\1'
              name= 'Inputs::'+ name
            elsif name.sub! /Payload(V\d+)?$/, '\1'
              name= 'Payloads::'+ name
            end
            string = "#{name}, null: true"
          end
        end
        helper['type_string']= string
        $output[outfile].push template 'field_header', f, helper

          if f['args']
            $output[outfile].push ''
            f['args'].each do |f|
              helper = { 'name' => f['name'].underscore}
              helper['by'] = ([$query, $mutation, $subscription].include? n) ? 'All' : "By#{name_to_class n}"

              chain = []
              if ft = f['type']
                while ft
                  chain.unshift ft
                  ft = ft['ofType']
                end
              end
              string = ''
              chain.each do |t|
                if t['kind'] == 'NON_NULL' and !t['name']; string.sub! /false$/, 'true'
                elsif t['kind'] == 'LIST' and !t['name']; string = "[#{string}], required: false"
                else
                  name = t['name']
                  if name.sub! /Input(V\d+)?$/, '\1'
                    name= 'Inputs::'+ name
                  elsif name.sub! /Payload(V\d+)?$/, '\1'
                    name= 'Payloads::'+ name
                  end
                  string = "#{name}, required: false"
                end
              end
              helper['type_string']= string
              $output[outfile].push template 'argument', f, helper
            end
          end

        $output[outfile].push template 'field_footer'
      end
    end

    $output[outfile].push template 'type_footer'

  end

  pp stats
end

def output_files
  all_files = []
  $output.keys.reverse.each do |file|
    content = $output[file]
    content = (Array === content) ? content.flatten.join('') : content
    outfile = "#{$out_dir}/#{file}"
    FileUtils.mkdir_p File.dirname outfile
    File.open(outfile, 'w') { |f| f.write content }
    all_files.push outfile
  end

  outfile = "#{$out_dir}/all.rb"
  File.open(outfile, 'w') { |f| f.write all_files.join "\n" }
end

def new(f)
  $output[f] and begin $log.fatal "File '#{f}' already exists; exiting."; exit 1 end
  f
end

def template(file, args = {}, helper = {})
{
'schema.rb' => "module Spree
  module GraphQL
    class Schema < ::GraphQL::Schema
      query ::Spree::GraphQL::Types::#{args['query']}
      mutation ::Spree::GraphQL::Types::#{args['mutation']}
    end
  end
end
",
'type_header' => "module Spree
  module GraphQL
    module #{helper['group']}
      class #{args['name']} < BaseObject
",
        #field :#{helper['name']}, #{helper['type_string']}, resolve: Resolvers::#{helper['name']}::#{helper['by']} do
'field_header' => "
        field :#{helper['name']}, #{helper['type_string']} do
          description %q{#{args['description']}}
",
'argument' => "          argument :#{helper['name']}, #{helper['type_string']}
",
'field_footer' => "        end",
'type_footer' => "

      end
    end
  end
end

",
}[file]
end

def name_to_class(n)
  n.sub! /^(?:Connection)$/, ''
  n.camelize
end

####
run
