# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "bacon-colored_output"
  gem.version       = '1.1.1'
  gem.authors       = ["whitequark"]
  gem.email         = ["whitequark@whitequark.org"]
  gem.description   = %q{Colored output for Bacon test framework! http://i.imgur.com/EpTpw.png}
  gem.summary       = gem.description
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'bacon'
end
