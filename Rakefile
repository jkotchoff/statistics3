
require 'rubygems'
require 'bundler'
require 'semver'

def s_version
  SemVer.find.format "%M.%m.%p%s"
end

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'juwelier'

desc 'build the C extension'
task :extension do
  Dir.chdir File.expand_path('../ext', __FILE__) do
    system "ruby extconf.rb"
    system "make"
  end
end

Juwelier::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "statistics3"
  gem.homepage = "http://github.com/flajann2/statistics3"
  gem.license = "MIT"
  gem.version = s_version
  gem.summary = %Q{Statistics3 library}
  gem.description = %Q{
  Statistics3 is a module that provides normal,
  Chi-square, t- and F- probability distributions
  for Ruby. It is a fork/continuation of Shin-ichiro Hara's original code.
  It provides a native, compiled extension and a pure Ruby implementation.
  }

  gem.email = "fred.mitchell@gmx.de"
  gem.authors = ["Fred Mitchell"]
  gem.required_ruby_version = '>= 2.2.2'

  # dependencies defined in Gemfile
end
Juwelier::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['spec'].execute
end

desc 'run basic tests'
task :test => :extension do
  Dir.chdir File.expand_path('..', __FILE__) do
    system "ruby -w -I lib -I ext -r test/unit -e 'Test::Unit::AutoRunner.run' test"
  end
end

task :default => :test

require 'yard'
YARD::Rake::YardocTask.new
