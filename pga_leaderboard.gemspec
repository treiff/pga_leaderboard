# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pga_leaderboard/version'

Gem::Specification.new do |spec|
  spec.name          = "pga_leaderboard"
  spec.version       = PgaLeaderboard::VERSION
  spec.authors       = ["Trevor Reiff"]
  spec.email         = ["trevorreiff@gmail.com"]
  spec.summary       = %q{Command line PGA leaderboard tool}
  spec.description   = %q{View PGA leaderboard in your console, updated every 3-min}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~>3.2.0"
  spec.add_development_dependency "guard", "~>2.12.4"
  spec.add_development_dependency "guard-rspec", "~>4.5.0"

  spec.add_dependency "httparty", "~>0.13.3"
  spec.add_dependency "thor", "~>0.19.1"
end
