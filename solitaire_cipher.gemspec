# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solitaire_cipher/version'

Gem::Specification.new do |spec|
  spec.name          = "solitaire_cipher"
  spec.version       = SolitaireCipher::VERSION
  spec.authors       = ["Stefan Lyew"]
  spec.email         = ["stefan.lyew@gmail.com"]
  spec.description   = %q{A Ruby implementation of Bruce Schneier's Solitaire Cipher}
  spec.summary       = %q{For evading the NSA}
  spec.homepage      = "https://github.com/stefanlyew/solitaire_cipher"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", '~> 2.5'
end
