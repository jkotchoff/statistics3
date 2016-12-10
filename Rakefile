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

task :extension do
  Dir.chdir File.expand_path('../ext', __FILE__) do
    system "ruby extconf.rb"
    system "make"
  end
end

task :test => :extension do
  Dir.chdir File.expand_path('..', __FILE__) do
    system "ruby -w -I lib -I ext -r test/unit -e 'Test::Unit::AutoRunner.run' test"
  end
end

task :default => :test
