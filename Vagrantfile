# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.network "forwarded_port", guest: 80, host: 6480

  # config.vm.network "public_network"
  config.vm.network "private_network", ip: "192.168.33.10"

  config.push.define "atlas" do |push|
    push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  end

  config.vm.provision "shell", path: "vagrant-init.sh"

end
