require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new(:spec)

desc 'Run RuboCop'
RuboCop::RakeTask.new(:rubocop) do |task|
  task.patterns = %w(lib/**/*.rb)
  task.formatters = %w(files fuubar)
  task.fail_on_error = false
end

task default: [:spec, :rubocop]
