# Generated by juwelier
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Juwelier::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: statistics3 0.0.5 ruby lib
# stub: ext/extconf.rb

Gem::Specification.new do |s|
  s.name = "statistics3"
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Fred Mitchell"]
  s.date = "2017-04-24"
  s.description = "\n  Statistics3 is a module that provides normal,\n  Chi-square, t- and F- probability distributions\n  for Ruby. It is a fork/continuation of Shin-ichiro Hara's original code.\n  It provides a native, compiled extension and a pure Ruby implementation.\n  "
  s.email = "fred.mitchell@gmx.de"
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.org"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".ruby-version",
    ".semver",
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "History.rdoc",
    "LICENSE.txt",
    "README.org",
    "Rakefile",
    "examples/mklist.rb",
    "examples/show.rb",
    "ext/_statistics3.c",
    "ext/extconf.rb",
    "lib/statistics3.rb",
    "lib/statistics3/base.rb",
    "lib/statistics3/no_ext.rb",
    "spec/spec_helper.rb",
    "statistics3.gemspec",
    "test/sample_tbl.rb",
    "test/test_ext.rb",
    "test/test_inv.rb"
  ]
  s.homepage = "http://github.com/flajann2/statistics3"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2")
  s.rubygems_version = "2.6.11"
  s.summary = "Statistics3 library"

  # s.add_runtime_dependency("psych") - where is yaml used in this project?
  s.add_development_dependency("colorize")
  s.add_development_dependency("awesome_print")
  s.add_development_dependency("rspec")
  s.add_development_dependency("test-unit")
  s.add_development_dependency("yard")
  s.add_development_dependency("rdoc")
  s.add_development_dependency("bundler")
  s.add_development_dependency("juwelier")
  s.add_development_dependency("simplecov")
  s.add_development_dependency("pry")
  s.add_development_dependency("pry-byebug")
  s.add_development_dependency("pry-doc")
  s.add_development_dependency("pry-remote")
  s.add_development_dependency("pry-rescue")
  s.add_development_dependency("pry-stack_explorer")

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end
end
