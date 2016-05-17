# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "forwarded_port", guest: 80, host: 6480
  config.vm.network "private_network", type: "dhcp"

  config.push.define "atlas" do |push|
    push.app = "code_monk/orchestra"
  end

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.name = "orchestrahost"
    v.linked_clone = true if Vagrant::VERSION =~ /^1.8/
    v.memory = 1024
    v.cpus = 2
  end

  config.vm.provision "shell", path: "apt.sh"
  #config.vm.provision "shell", path: "install.sh"
  #config.vm.synced_folder ".", "/root/.sjc"

end
