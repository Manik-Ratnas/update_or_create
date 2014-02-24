# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'update_or_create/version'

Gem::Specification.new do |spec|
  spec.name          = "update_or_create"
  spec.version       = 0.0.1
  spec.authors       = ["Manish Puri"]
  spec.email         = ["manishspuri@gmail.com"]
  spec.summary       = %q{This gem defines the update_or_create method for activerecord objects}
  spec.description   = %q{This gem defines the update_or_create method for activerecord objects}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_dependency 'activerecord'

  

end
