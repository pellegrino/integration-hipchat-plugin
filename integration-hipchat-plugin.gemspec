# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "integration-hipchat-plugin/version"

Gem::Specification.new do |s|
  s.name        = "integration-hipchat-plugin"
  s.version     = Integration::Hipchat::Plugin::VERSION
  s.authors     = ["Vitor Pellegrino"]
  s.email       = ["vitorp@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Hipchat support to integration}
  s.description = %q{Few rake tasks created to operate with integration rails plugin}

  s.rubyforge_project = "integration-hipchat-plugin"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "integration"

  s.add_runtime_dependency "hipchat"
end
