# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  # config.vm.box_check_update = true
  config.vm.network :private_network, ip: "192.168.56.12"  
  config.ssh.private_key_path = File.expand_path('~/.ssh/id_rsa')

  config.vm.provider :virtualbox do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end

  config.vm.define "foreman" do |foreman|
    foreman.vm.hostname = "foreman"
    foreman.vm.provision "ansible_local" do |ansible|    
      ansible.playbook = "playbook.yml"
      ansible.install_mode = "pip"
      ansible.version = "2.4.2.0"
      ansible.become = true
      #ansible.inventory_path = "inventory"
    end
  end
end