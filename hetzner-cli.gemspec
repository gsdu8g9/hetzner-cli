# -*- encoding: utf-8 -*-
require File.expand_path("../lib/hetzner-cli/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "hetzner-cli"
  s.version     = HetznerCli::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Patrick Debois"]
  s.email       = ["patrick.debois@jedi.be"]
  s.homepage    = "http://github.com/jedi4ever/hetzner-cli/"
  s.summary     = %q{Manage a hetzner machine}
  s.description = %q{Manage a Hetzner machine}

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "hetzner-cli"

  s.add_dependency "yajl-ruby"
  s.add_dependency "json"
  s.add_dependency "excon"


  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{ |f| f =~ /^bin\/(.*)/ ? $1 : nil }.compact
  s.require_path = 'lib'
end
