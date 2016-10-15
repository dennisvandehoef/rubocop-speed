# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop/speed/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-speed'
  spec.version       = RuboCop::Speed::VERSION
  spec.authors       = ['Dennis van de Hoef']
  spec.email         = ['dennisvdhoef@gmail.com']

  spec.summary       = 'short summary'
  spec.description   = 'longer description'
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = 'MIT'

  spec.files          = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']


  spec.add_dependency 'rubocop', '~> 0.42.0'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'benchmark-ips', '~> 2.7'
  spec.add_development_dependency 'pry'
end
