# Encoding: utf-8
# Cookbook Name:: cookbook-pipeline
# Recipe:: _system_packages
#
# Copyright (C) 2013 timusg
#
# All rights reserved - Do Not Redistribute


[ "build-essential",
  "libxml2-dev",
  "postfix",
  "libxslt-dev",
  "ruby1.9.3",
  "git-core" ].each do |pkg|
    package pkg
  end


  if node['install_gems?']
    node['gems'].each do |gem|
      gem_package gem do
        gem_binary "/usr/bin/gem1.9.3"
      end
    end
  end
