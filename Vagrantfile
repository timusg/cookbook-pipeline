# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu"
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box"
  config.berkshelf.enabled = true

  config.vm.define :default do |default_config| 
    default_config.vm.network :forwarded_port, guest: 8080, host: 8080
  end

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      "recipe[jenkin-docker::default]"
    ]
  end
end
