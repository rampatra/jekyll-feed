# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-feed/version"

Gem::Specification.new do |spec|
  spec.name          = "rams-jekyll-feed"
  spec.version       = Jekyll::Feed::VERSION
  spec.authors       = ["Ram Patra"]
  spec.email         = ["hi@rampatra.com"]
  spec.summary       = "A Jekyll plugin to generate an Atom feed of your Jekyll posts without the hard limit of 10 posts."
  spec.homepage      = "https://github.com/rampatra/jekyll-feed"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r!^spec/!)
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_dependency "jekyll", ">= 3.7", "< 5.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "nokogiri", "~> 1.6"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop-jekyll", "~> 0.5"
  spec.add_development_dependency "typhoeus", ">= 0.7", "< 2.0"
end
