# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vai/version'

Gem::Specification.new do |spec|
  spec.name          = "vai"
  spec.version       = VagrantPlugins::Vai::VERSION
  spec.authors       = ["Matthew Miller"]
  spec.email         = ["matthew@mi11er.net"]
  spec.summary       = %q{A Vagrant provisioning plugin to output a usable Ansible inventory to use outside Vagrant.}
  spec.description   = %q{A Vagrant provisioning plugin to output a usable Ansible inventory to use outside Vagrant.}
  spec.homepage      = "https://github.com/MatthewMi11er/vai"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
