# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_simple_assertions/version'
require 'rails_simple_assertions'

Gem::Specification.new do |spec|
  spec.name          = "rails-simple-assertions"
  spec.version       = RailsSimpleAssertions::VERSION
  spec.authors       = ["Henry Poydar"]
  spec.email         = ["hpoydar@gmail.com"]
  spec.summary       = %q{Adds a handful of simple, one-liner association and validation assertions to ActiveSupport::TestCase.}
  spec.homepage      = "https://github.com/hpoydar/rails-simple-assertions"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
