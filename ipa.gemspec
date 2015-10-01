# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ipa/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'ipa'
  s.version     = IPA::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Sijmen Mulder']
  s.email       = ['ik@sjmulder.nl']
  s.license     = 'Public Domain'
  s.homepage    = 'https://github.com/sjmulder/ipa'
  s.summary     = 'Reads metadata from IPA files'
  s.description = 'Reads metadata from iPhone/iPad IPA files, such as title, version, and icon files.'

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project         = 'ipa'

  s.add_dependency 'rubyzip', '~> 1.1'
  s.add_dependency 'zip-zip', '~> 0.3'
  s.add_dependency 'CFPropertyList', '~> 2.3'
  s.add_development_dependency 'bundler'

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
