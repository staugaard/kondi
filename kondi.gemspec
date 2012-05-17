# -*- encoding: utf-8 -*-
require File.expand_path('../lib/kondi/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mick Staugaard"]
  gem.email         = ["mick@staugaard.com"]
  gem.description   = "An application framework for RubyMotion"
  gem.summary       = "makes you feel right at home"
  gem.homepage      = ""

  gem.files         = Dir.glob("lib/**/*") + ["README.md"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "kondi"
  gem.require_paths = ["lib"]
  gem.version       = Kondi::VERSION
end
