source 'https://rubygems.org'

# Specify your gem's dependencies in chef_helpers.gemspec
gemspec

group :development, :test do
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
end

group :local do
  gem 'guard-rspec', require: false
  gem 'simplecov', require: false
  gem 'pry'
  gem 'pry-theme'
  gem 'colorize', require: false
  gem 'reek', require: false
  gem 'flog', require: false
  gem 'overcommit'
  gem 'guard-yard', require: false
  gem 'rb-fsevent', require: false if RUBY_PLATFORM =~ /darwin/i
  gem 'ruby-lint', require: false, github: 'baberthal/ruby-lint'
  gem 'ruby_gntp'
end
