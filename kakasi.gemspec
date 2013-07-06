# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kakasi/version'

Gem::Specification.new do |spec|
  spec.name          = "kakasi"
  spec.version       = Kakasi::VERSION
  spec.authors       = ["Akinori MUSHA"]
  spec.email         = ["knu@idaemons.org"]
  spec.description   = %q{Kakasi}
  spec.summary       = %q{Kakasi}
  spec.homepage      = "https://github.com/knu/kakasi_ffi"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/dummy/extconf.rb"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rdoc", ["> 2.4.2"]
  spec.add_development_dependency "bundler", [">= 1.2"]
end
