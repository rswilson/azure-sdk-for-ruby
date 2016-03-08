# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'azure_mgmt_graph/module_definition'
require 'azure_mgmt_graph/version'

Gem::Specification.new do |spec|
  spec.name          = 'azure_mgmt_graph'
  spec.version       = Azure::ARM::Graph::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'azrubyteam@microsoft.com'
  spec.description   = 'Microsoft Azure Active Directory Graph Management Client Library for Ruby'
  spec.summary       = 'Official Ruby client library to consume Microsoft Azure Active Directory Graph Management services.'
  spec.homepage      = 'http://github.com/azure/azure-sdk-for-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'dotenv', '~> 2'
  spec.add_development_dependency 'azure_mgmt_resources', '~> 0.2'

  spec.add_runtime_dependency 'ms_rest_azure', '~> 0.2.0'
end
