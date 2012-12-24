$:.unshift File.join(File.dirname(__FILE__), *%w(.. lib))
require 'scrawl'
require 'rspec'

Dir[File.join(File.dirname(__FILE__), "support/**/*.rb")].each { |f| require f}

# TODO: Is this the best way to deal with a global paths?
#       What about RSpec config?
FIXTURES_PATH = File.join(File.dirname(__FILE__), 'fixtures')
TMP_PATH = File.join(File.dirname(__FILE__), 'tmp')

RSpec.configure do |config|
  config.include(ScrawlHelper)
  cwd = FileUtils.pwd

  config.before(:all) do
    FileUtils.mkdir(TMP_PATH) unless File.directory?(TMP_PATH)
    Dir.chdir(TMP_PATH)
  end

  config.after(:all) do
    FileUtils.remove_dir(TMP_PATH, true) if File.directory?(TMP_PATH)
    Dir.chdir(cwd)
  end
end
