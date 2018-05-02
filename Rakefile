require 'rspec/core/rake_task'
desc "run spec"
task :default => [:spec]

RSpec::Core::RakeTask.new(:spec) do |spec|
      spec.pattern = 'spec/*/*_spec.rb'
      spec.rspec_opts = %w(--color --format progress)
end
