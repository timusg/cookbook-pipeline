# Encoding: utf-8
# Cookbook Name:: jenkins-dockers
# Recipe:: default
#
# Copyright (C) 2013 sumit
#
# All rights reserved - Do Not Redistribute

include_recipe 'docker::default'
include_recipe 'jenkins::server'


[ "build-essential",
  "libxml2-dev",
  "libxslt-dev",
  "ruby1.9.1-full",
  "git-core" ].each do |pkg|
  package pkg
end

gem_package "test-kitchen" do
  options "--pre"
  version node['kitchen']['gem_version']
  gem_binary "/usr/bin/gem1.9.1"
end

%w{foodcritic bundler rake}.each do |gem|
  gem_package gem do
    gem_binary "/usr/bin/gem1.9.1"
  end
end


%w(git).each do |plugin|
  jenkins_cli "install-plugin #{plugin}"
  jenkins_cli "safe-restart"
end

#jenkins ALL=NOPASSWD: ALL in sudo
#for bundle install
#
#
#
# sudo 'jenkins' do
#   user      "%jenkins"
#   commands  ['bundle install']
#   nopasswd  true
# end
