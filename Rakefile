require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require_relative 'lib/helper'
RSpec::Core::RakeTask.new('spec')

desc "Run tests"
task :default => :spec

desc "Display sorted records from parsed Separated Value files"
task :encrypt do
  puts "Please enter a message:"
  message = STDIN.gets
  #TODO Message Checker?
  cipher = SolitaireCipher::Cipher.new(message)
  letters = cipher.letterize
  length = letters.length
  keystream = cipher.generate_keystream(length)
  message = cipher.map_to_numbers(letters)
  keystream = cipher.map_to_numbers(keystream)
  combination = cipher.combine_message message, keystream
  hash = cipher.map_to_letters combination
  hash = hash.scan(/.{5}|.+/).join(" ")
  puts hash
end

task :decrypt do
  puts "Please enter a message:"
  message = STDIN.gets
  message.gsub!(' ','')
  #TODO Message Checker?
  cipher = SolitaireCipher::Cipher.new(message)
  letters = cipher.letterize
  length = letters.length
  keystream = cipher.generate_keystream(length)
  message = cipher.map_to_numbers(letters)
  keystream = cipher.map_to_numbers(keystream)
  combination = cipher.uncombine_message message, keystream
  hash = cipher.map_to_letters combination
  puts hash
end
