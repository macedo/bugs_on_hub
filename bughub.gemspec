# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'bughub/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Rafael Macedo"]
  gem.email         = ["macedo.rafaelfernandes@gmail.com"]
  gem.description   = "A simple way to use github issues features in your project"
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/rafaelmacedo/bughub"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "bughub"
  gem.require_paths = ["lib"]
  gem.version       = Bughub::Version::STRING

  gem.add_dependency "octokit", "~> 1.2.1"  
end
