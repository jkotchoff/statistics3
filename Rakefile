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
require 'statistics3'

task :extension do
  Dir.chdir File.expand_path('../ext', __FILE__) do
    system "ruby extconf.rb"
    system "make"
  end
end

Statistics3::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "statistics3"
  gem.homepage = "http://github.com/flajann2/statistics3"
  gem.license = "MIT"
  gem.version = s_version
  gem.summary = %Q{Statistics3 library}
  gem.description = %Q{
  Statistics3 is a basic Statistical package for Ruby.}

  gem.email = "fred.mitchell@gmx.de"
  gem.authors = ["Fred Mitchell"]
  gem.required_ruby_version = '>= 2.2.2'

  # dependencies defined in Gemfile
end
Statistics3::RubygemsDotOrgTasks.new

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

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new

task :test => :extension do
  Dir.chdir File.expand_path('..', __FILE__) do
    system "ruby -w -I lib -I ext -r test/unit -e 'Test::Unit::AutoRunner.run' test"
  end
end

task :default => :test
