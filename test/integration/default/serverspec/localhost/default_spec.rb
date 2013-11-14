require 'spec_helper'

describe 'jenkins' do
  describe user('jenkins') do
    it { should exist }
    it { should belong_to_group 'admins' }
  end

  describe service('jenkins') do
    it { should be_enabled }
    it { should be_running }
  end

  describe port(8080) do
    it { should be_listening.with('tcp') }
  end
end

describe 'docker' do
  describe service('docker') do
    it { should be_enabled }
    it { should be_running }
  end
  describe command('docker') do
    it { should return_stdout /FreeSWITCH version/ }
  end
end
