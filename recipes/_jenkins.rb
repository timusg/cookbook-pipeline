# Encoding: utf-8
# Cookbook Name:: jenkin-docker
# Recipe:: _jenkins
#
# Copyright (C) 2013 sumit
#
# All rights reserved - Do Not Redistribute

include_recipe 'jenkins::server'

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
