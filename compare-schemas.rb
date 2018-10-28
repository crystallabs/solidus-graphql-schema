#!/usr/bin/env ruby

if ARGV.size < 2
  STDERR.puts "Usage: $0 <schema_json_file_1> <schema_json_file_2>"
  exit 1
end

require 'json'
require 'logger'
require 'fileutils'
require 'active_support/core_ext/string/inflections'

def run
  $log= Logger.new STDOUT
  $log.level = Logger::DEBUG
  $log.formatter = proc do |severity, datetime, progname, msg| "#{severity.to_s}: #{msg}\n" end

  schema_text= File.read ARGV.shift
  #schema_text.gsub! /hopify.com/, 'olidus.io'
  schema_text.gsub! /hopify(?!\.com)/, 'tore'
  schema = JSON.parse schema_text
  schema1 = schema['data']['__schema']

  schema_text= File.read ARGV.shift
  #schema_text.gsub! /hopify.com/, 'olidus.io'
  schema_text.gsub! /hopify(?!\.com)/, 'tore'
  schema = JSON.parse schema_text
  schema2 = schema['data']['__schema']

  # Remove descriptions which are not controlled by us and are known to be different
  remov(schema1)
  remov(schema2)

  schema1['types'].each do |t1|
    next if t1['isDeprecated'] or t1['name']=~ /^__/
    t2= schema2['types'].find{|x| x['name']== t1['name']}

    # The 'and t2' is here to make sure we only compare types existing in both,
    # and not old/deprecated types from t1 which we never had in t2.
    if !equal(t1,t2) and t2
      File.write "diffs/#{t1['name']}.orig", JSON.pretty_generate(t1)
      File.write "diffs/#{t1['name']}.solidus", JSON.pretty_generate(t2)
    else
      puts "OK: #{t1['name']}"
    end
  end
end

def equal(t1,t2)
  return false if !t2 or t2.size!= t1.size
  t1.zip(t2).each do |f1, f2|
    return false if !f2 or f1!= f2
  end
  true
end

def remov(s)
  if s.is_a? Hash
    s.delete 'description'
    s.each do |k,v|
      if (v.is_a?(Hash) and v['isDeprecated'])
        s.delete k
      else
        remov v
      end
    end
  elsif s.is_a? Array
    s.reject!{|x| x.is_a?(Hash) and x['isDeprecated']}
    s.each do |v|
      remov v
    end
  end
end

run
