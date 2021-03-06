# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'regaliator/version'

Gem::Specification.new do |spec|
  spec.name          = "regaliator"
  spec.version       = Regaliator::VERSION
  spec.authors       = ["Hesham El-Nahhas"]
  spec.email         = ["hesham@regalii.com"]
  spec.summary       = %q{Ruby wrapper for Regalii's API}
  spec.description   = ""
  spec.homepage      = "https://www.regalii.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",  "~> 1.7"
  spec.add_development_dependency "rake",     "~> 10.0"
  spec.add_development_dependency "vcr",      "~> 2.9.3"
  spec.add_development_dependency "webmock",  "~> 1.19"
  spec.add_development_dependency "minitest", "~> 5.8.4"
  spec.add_dependency 'json'
end
