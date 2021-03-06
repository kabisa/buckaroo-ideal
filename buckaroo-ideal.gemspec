# -*- encoding: utf-8 -*-
require File.expand_path('../lib/buckaroo-ideal/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tom-Eric Gerritsen", "Thomas van der Pol", "Sander Voerman"]
  gem.email         = ["tomeric@eet.nu", "thomasp@everydayhero.com.au", "sander.voerman@kabisa.nl"]
  gem.description   = %q{A simple Ruby library that aids you in handling iDEAL transactions via the Buckaroo iDEAL gateway.}
  gem.summary       = %q{Integrate with the Buckaroo iDEAL API.}
  gem.homepage      = "http://github.com/kabisaict/buckaroo-ideal"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "buckaroo-ideal"
  gem.require_paths = ["lib"]
  gem.version       = Buckaroo::Ideal::VERSION

  gem.add_dependency 'activesupport'

  unless RUBY_VERSION < "1.9"
    gem.add_dependency 'transliterator'
  end
end
