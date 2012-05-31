# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'bugs_on_hub/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Rafael Macedo"]
  gem.email         = ["macedo.rafaelfernandes@gmail.com"]
  gem.description   = "A simple way to use github issues features in your project"
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/rafaelmacedo/bugs_on_hub"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "bugs_on_hub"
  gem.require_paths = ["lib"]
  gem.version       = BugsOnHub::Version::STRING

  gem.add_dependency "octokit", "~> 1.2.1"  
end
