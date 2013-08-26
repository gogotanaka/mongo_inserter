# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongo_inserter/version'

Gem::Specification.new do |spec|
  spec.name          = "mongo_inserter"
  spec.version       = MongoInserter::VERSION
  spec.authors       = ["gogotanaka"]
  spec.email         = ["tanaka@consultant.com"]
  spec.description   = %q{test mongoid}
  spec.summary       = %q{test mongoid}
  spec.homepage      = "http://tanakakazuki.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
