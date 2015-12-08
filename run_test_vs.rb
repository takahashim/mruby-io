#!/usr/bin/env ruby
#
# mrbgems test runner

MRuby::Build.new do |conf|
  toolchain :visualcpp
  conf.gembox 'default'

  conf.gem :git => 'https://github.com/iij/mruby-env.git'
  conf.enable_test

  conf.gem File.expand_path(File.dirname(__FILE__))
end
