# -*- encoding: utf-8 -*-
$:.push File.expand_path("../../lib", __FILE__)
require "closed_struct"

Gem::Specification.new do |s|
  s.name        = "closed_struct"
  s.version     = ClosedStruct::VERSION
  s.authors     = ["Paul Pagel"]
  s.email       = ["paul@8thlight.com"]
  s.homepage    = "https://github.com/paulwpagel/closed_struct"
  s.summary     = %q{Framework to control immutable datas.}
  s.description = %q{Framework to control immutable datas.}

  s.rubyforge_project = "closed_struct"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", '~> 2.8.0' # TODO: Figure out how far back we can work with
end



desc "Push the gem to server"
task :gem_deploy => [:gem] do
  system "gem push pkg/closed_struct.gem"
end