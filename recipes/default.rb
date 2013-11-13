# Encoding: utf-8
# Cookbook Name:: cookbook-pipeline
# Recipe:: default
#
# Copyright (C) 2013 timusg
#
# All rights reserved - Do Not Redistribute

include_recipe 'docker::default'
include_recipe 'cookbook-pipeline::_jenkins'

[ "build-essential",
  "libxml2-dev",
  "libxslt-dev",
  "ruby1.9.3",
  "git-core" ].each do |pkg|
  package pkg
end

gem_package "test-kitchen" do
  options "--pre"
  version node['kitchen']['gem_version']
  gem_binary "/usr/bin/gem1.9.3"
end

%w{foodcritic bundler rake kitchen-docker}.each do |gem|
  gem_package gem do
    gem_binary "/usr/bin/gem1.9.3"
  end
end
