# Encoding: utf-8
# Cookbook Name:: cookbook-pipeline
# Recipe:: default
#
# Copyright (C) 2013 timusg
#
# All rights reserved - Do Not Redistribute

default['install_gems?'] = true
default['gems'] =  %w{foodcritic bundler rake kitchen-docker berkshelf test-kitchen}

default['git']['user-name'] = 'Your Name'
default['git']['email'] = 'yo@example.com'

job1 = {:name => "s3cmd" , :git_branch => "git@github.com:timusg/s3cmd.git" , :build_steps => ["foodcritic -f any .","kitchen test"] }
job2 = {:name => "ntp" , :git_branch => "git@github.com:timusg/s3cmd.git" , :build_steps => ["bundle install","bundle exec foodcritic -f any .","bundle exec kitchen test"] }

default['jobs'] = [job1,job2]
