# -*- mode: ruby -*-
# vi: set ft=ruby :
 
Vagrant.configure("2") do |config|
 
  config.vm.define "dns1" do |dns1|
    dns1.vm.box = "bento/centos-7.4"                                                                                     
    dns1.vm.hostname = "dns1.localdomain" 
    dns1.vm.provision :shell, :path => "~/Dns_Vagrant/Dns1.sh"
    dns1.ssh.username = "root"
    dns1.ssh.password = "vagrant"
    dns1.ssh.insert_key = "true"
    dns1.vm.network "private_network", ip: "192.168.56.104"
     
    dns1.vm.provider "virtualbox" do |vb|
      vb.name = "Dns1"
      vb.customize ["modifyvm", :id, "--memory", "1024"]
      vb.customize ["modifyvm", :id, "--cpus", "1"]
    end
  end
 config.vm.define "dns2" do |dns2|
    dns2.vm.box = "bento/centos-7.4"
    dns2.vm.hostname = "dns2.localdomain"
    dns2.vm.provision :shell, :path => "~/Dns_Vagrant/Dns2.sh"
    #dns2.vm.provision :shell, :path => "/home/aghannam/Dns_Vagrant/ssh.sh"
    dns2.ssh.username = "root"
    dns2.ssh.password = "vagrant"
    dns2.ssh.insert_key = "true"
    dns2.vm.network "private_network", ip: "192.168.56.105"
 
    dns2.vm.provider "virtualbox" do |vb|
      vb.name = "Dns2"
      vb.customize ["modifyvm", :id, "--memory", "1024"]
      vb.customize ["modifyvm", :id, "--cpus", "1"]
    end
  end
end
