# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sassc/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "sassc-rails"
  spec.version       = SassC::Rails::VERSION
  spec.authors       = ["Ryan Boland"]
  spec.email         = ["bolandryanm@gmail.com"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'pry'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.5.1"
  spec.add_development_dependency 'rails'

  # unfortunately we require sass for now, so that we can
  # reuse portions of the sprockets template
  spec.add_dependency 'sass'

  spec.add_dependency "sassc", "0.0.7"
  spec.add_dependency 'railties', '>= 4.0.0', '< 5.0'
  spec.add_dependency 'sprockets', '3.0.0.beta.6'
end