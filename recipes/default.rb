# Encoding: utf-8
# Cookbook Name:: cookbook-pipeline
# Recipe:: default
#
# Copyright (C) 2013 timusg
#
# All rights reserved - Do Not Redistribute

#include_recipe 'docker::default'
#include_recipe 'cookbook-pipeline::_jenkins'
#include_recipe 'cookbook-pipeline::_system_packages'
