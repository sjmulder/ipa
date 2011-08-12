# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ipa/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'IPA'
  s.version     = IPA::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Sijmen J. Mulder']
  s.email       = ['sjmulder@gmail.com']
  s.homepage    = 'https://github.com/sjmulder/ipa'
  s.summary     = 'TODO: Write a gem summary'
  s.description = 'TODO: Write a gem description'

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project         = 'ipa'

	s.add_dependency 'rubyzip', '~> 0.9.4'
	s.add_dependency 'plist',   '~> 3.1.7'
  s.add_development_dependency 'bundler', '>= 1.0.0'

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
