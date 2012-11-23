$:.unshift File.join(File.dirname(__FILE__), *%w(.. lib))
require 'rspec'
require 'scrawl'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(File.dirname(__FILE__), "support/**/*.rb")].each { |f| require f}

require 'fakefs'

RSpec.configure do |config|
  config.include(ScrawlHelper)
end