module Scrawl
  class Compiler
    attr_reader :dir

    def initialize(dir)
      @dir = dir
    end

    def files
      Dir["#{dir}/**/*.markdown"]
    end
  end
end
