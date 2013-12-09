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
  length = message.length
  #TODO Message Checker?
  SolitaireCipher::Cipher.new(message)
end



