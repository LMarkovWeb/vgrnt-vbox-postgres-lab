# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = "4192"
     vb.cpus = 2
  end

  # 
  config.vm.define "postgresql-1" do |conf|
    conf.vm.box = "peru/ubuntu-20.04-server-amd64"
    conf.vm.hostname = 'postgresql-1.local'
    conf.vm.network "private_network", ip: "192.168.22.10"
    conf.vm.provision "shell", path: "bootstrap.sh"
  end 

end