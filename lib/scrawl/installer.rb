require 'fileutils'

module Scrawl
  class Installer
    attr_reader :entries_dir

    def initialize(install_dir)
      @entries_dir = File.join(install_dir, 'scrawl', 'entries')
    end

    def install
      FileUtils.mkdir_p(entries_dir) unless File.directory?(entries_dir)
    end
  end
end
