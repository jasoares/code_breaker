require 'rake'
require 'rspec/core/rake_task'

namespace :spec do
	desc "Run specs with RCov"
	RSpec::Core::RakeTask.new('rcov') do |t|
		t.rcov = true
		t.rcov_opts = ['--exclude', '\/Library\/Ruby']
	end
	desc "Run all specs in random order"
	RSpec::Core::RakeTask.new('rand') do |t|
    	t.rspec_opts = ["--color", "--format", "documentation", "--order", "rand"]
	end
end
