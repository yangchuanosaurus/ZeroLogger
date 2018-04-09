# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'zero_logger'
  s.version     = '0.0.1'
  s.date        = '2018-04-10'
  s.summary     = "Indent console output for cli"
  s.description = "Using zero logger to add indent of the output of programs"
  s.authors     = ["Albert Yangchuanosaurus"]
  s.email       = '355592261@qq.com'
  s.files       = `git ls-files`.split("\n")
  #s.require_paths << 'templates' # template resources

  s.homepage    =
    'https://github.com/yangchuanosaurus/ZeroLogger'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 2.4.0'
end