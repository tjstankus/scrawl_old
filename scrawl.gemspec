# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scrawl/version'

Gem::Specification.new do |gem|
  gem.name          = "scrawl"
  gem.version       = Scrawl::VERSION
  gem.authors       = ["TJ Stankus"]
  gem.email         = ["tj@stank.us"]
  gem.description   = %q{Write like a hacker.}
  gem.summary       = %q{Write like a hacker.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency('rspec', '2.12.0')
  gem.add_development_dependency('fakefs', '0.4.1')
end
