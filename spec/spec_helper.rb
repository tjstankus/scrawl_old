$:.unshift File.join(File.dirname(__FILE__), *%w(.. lib))
require 'rspec'
require 'scrawl'
require 'fakefs'

# Use tmp/rspec directory for file operations
# FileUtils.mkdir_p('tmp/rspec/') unless File.directory?('tmp/rspec/')
# FileUtils.cd('tmp/rspec/')
