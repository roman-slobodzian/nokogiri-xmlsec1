# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'xmlsec/version'

Gem::Specification.new do |spec|
  spec.name          = 'nokogiri-xmlsec1'
  spec.version       = Xmlsec::VERSION
  spec.summary       = %q{Wrapper around http://www.aleksey.com/xmlsec to
    support XML encryption, decryption, signing and signature validation in
    Ruby}
  spec.description   = %q{This is a fork of nokogiri-xmlsec. 
    This fork uses mini_portile to improve code predictiveness and allow heroku deploys.
    This gem adds support to Ruby for encrypting, decrypting, signing and validating
    the signatures of XML documents, according to the [XML Encryption Syntax and
    Processing](http://www.w3.org/TR/xmlenc-core/) standard, by wrapping around the
    [xmlsec1](http://www.aleksey.com/xmlsec) C library and adding relevant methods
    to `Nokogiri::XML::Document`.}

  spec.required_ruby_version = '>= 1.9.3'

  spec.license       = 'MIT'
  
  spec.author        = 'Renan Mendes Carvalho'
  spec.email         = ['aitherios@gmail.com']
  spec.homepage      = 'https://github.com/aitherios/nokogiri-xmlsec1'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.extensions    = %w{ext/nokogiri_ext_xmlsec/extconf.rb}

  spec.add_dependency 'nokogiri',                  '~> 1.0'
  spec.add_dependency 'mini_portile',              '~> 0.6.0'
  
  spec.add_development_dependency 'bundler',       '~> 1.3'
  spec.add_development_dependency 'rake',          '~> 10.0'
  spec.add_development_dependency 'rake-compiler', '~> 0.9'
  spec.add_development_dependency 'rspec',         '~> 3.0'
  spec.add_development_dependency 'guard-rspec',   '~> 4.5'
  spec.add_development_dependency 'guard-rake',    '~> 1.0'
  spec.add_development_dependency 'wwtd',          '~> 0.7'
  
end
