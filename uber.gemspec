# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uber/version'

Gem::Specification.new do |spec|
  spec.name = 'uber'
  spec.version = UberCar::VERSION
  spec.authors = ['Lukasz Raczylo']
  spec.email = ['lukasz@raczylo.com']
  spec.summary = %q{Ruby client library for Uber API}
  spec.description = 'Provides easy way to interact with the Uber API in any kind of application'
  spec.homepage = 'https://github.com/lukaszraczylo/uber-ruby'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Requirements
  spec.required_ruby_version = '>=1.9.2'
  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake', '~> 10.0', '>= 10.0.0'
  spec.add_development_dependency 'rspec', '~> 2.6'
  spec.add_development_dependency 'hashie', '~> 3.3', '>= 3.3.1'
  spec.add_development_dependency 'addressable', '~> 2.3', '>= 2.3.5'
end