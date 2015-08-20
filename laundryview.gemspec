# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'laundryview/version'

Gem::Specification.new do |spec|
  spec.name          = "laundryview"
  spec.version       = Laundryview::VERSION
  spec.authors       = ["Kurt Nelson"]
  spec.email         = ["kurtisnelson@gmail.com"]

  spec.summary       = %q{Scrape laundry room status from MacGray's LaundryView.com}
  spec.description   = %q{Scrape laundry room status from MacGray's LaundryView.com}
  spec.homepage      = "http://github.com/kurtisnelson/laundryview"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.6"
  spec.add_dependency "curb", "~> 0.8"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
