# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "resemblance/version"

Gem::Specification.new do |s|
  s.name        = "resemblance"
  s.version     = Resemblance::VERSION
  s.authors     = ["vad"]
  s.email       = ["vad4msiu@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Shingling and MinHash algorithm}
  s.description = %q{Realization shingling and MinHash algorithm}

  s.rubyforge_project = "resemblance"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency "unicode"

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
