# Encoding: utf-8
# Cookbook Name:: cookbook-pipeline 
# Recipe:: _jenkins
#
# Copyright (C) 2013 sumit
#
# All rights reserved - Do Not Redistribute

include_recipe 'jenkins::server'

 %w(git).each do |plugin|
   jenkins_cli "install-plugin #{plugin}"
   #jenkins_cli "safe-restart"
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


job_name = "s3cmd"

job_config = File.join(node[:jenkins][:node][:home], "#{job_name}-config.xml")


template job_config do
  source    'config.xml.erb'
  variables :job_name => job_name, :branch => "git_branch"
end

jenkins_job job_name do
  action :create
  config job_config
  notifies :restart , "service[jenkins]"
end


# git config --global user.email "you@example.com"
# git config --global user.name "Your Name"
