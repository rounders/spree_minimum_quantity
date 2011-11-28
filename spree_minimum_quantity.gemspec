# -*- encoding: utf-8 -*-
require File.expand_path('../lib/spree_minimum_quantity/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Francois Harbec"]
  gem.email         = ["fharbec@gmail.com"]
  gem.description   = %q{add minimum quantity order to certain products}
  gem.summary       = %q{add minimum quantity order to certain products}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "spree_minimum_quantity"
  gem.require_paths = ["lib"]
  gem.version       = SpreeMinimumQuantity::VERSION
end
