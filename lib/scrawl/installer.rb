require 'fileutils'

module Scrawl
class Installer
  DIR_NAME = 'scrawl/entries/'

  def self.install
    FileUtils.mkdir_p(DIR_NAME) unless File.directory?(DIR_NAME)
  end
end
end