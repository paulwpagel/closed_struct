# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "closed_struct"

Gem::Specification.new do |s|
  s.name        = "sursrogate"
  s.version     = ClosedStruct::VERSION
  s.authors     = ["Josh Cheek"]
  s.email       = ["josh.cheek@gmail.com"]
  s.homepage    = "https://github.com/JoshCheek/surrogate"
  s.summary     = %q{Framework to aid in handrolling mock/spy objects.}
  s.description = %q{Framework to aid in handrolling mock/spy objects.}

  s.rubyforge_project = "surrogate"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'bindable_block', '= 0.0.4'

  s.add_development_dependency "rspec", '~> 2.8.0' # TODO: Figure out how far back we can work with
end
