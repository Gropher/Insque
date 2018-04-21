# -*- encoding: utf-8 -*-
require File.expand_path('../lib/insque/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Yuri Gomozov"]
  gem.email         = ["grophen@gmail.com"]
  gem.description   = "Instant queue. Background processing and message driven communication tool. Faster and simplier alternative to Resque."
  gem.summary       = "Redis-based multi-threaded queue"
  gem.homepage      = "https://github.com/Gropher/insque"
  gem.licenses      = ['MIT']

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "insque"
  gem.require_paths = ["lib"]
  gem.version       = Insque::VERSION
  
  gem.add_dependency('redis', '> 2')
  gem.add_dependency('json')
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('activesupport')
  gem.add_development_dependency('activerecord')
  gem.add_development_dependency('sqlite3')
end
