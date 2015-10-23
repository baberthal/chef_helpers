# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chef_helpers/version'

Gem::Specification.new do |spec|
  spec.name          = 'chef_helpers'
  spec.version       = ChefHelpers::VERSION
  spec.authors       = ['Morgan Lieberthal']
  spec.email         = ['morgan@jmorgan.org']

  spec.summary       = 'Provides a set of helper methods for chef recipes.'
  spec.description   = File.read(File.expand_path('../README.md', __FILE__))
  spec.homepage      = 'https://github.com/baberthal/chef_helpers.git'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) } # rubocop:disable Metrics/LineLength
  spec.require_paths = ['lib']

  spec.add_dependency 'unix-crypt', '~> 1.3'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
