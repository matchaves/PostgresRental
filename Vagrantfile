# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  
    
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "generic/ubuntu1804"
  config.vm.hostname = "postgres.colabdevops.com.br"
  config.vm.define "postgres"
  config.vm.network :public_network, bridge: "wlp6s0", ip: "192.168.50.210"
  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end

  
  config.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
    #   vb.gui = true
    vb.name = "postgres"
    #   # Customize the amount of memory on the VM:
    vb.cpus = 2
    vb.memory = "2000"
     end

    #config.vm.provider :libvirt do |libvirt|
    #  libvirt.driver = "kvm"
    #  libvirt.connect_via_ssh = false
    #  libvirt.username = "ubuntu"
    #  libvirt.password = "root123"
    #  libvirt.storage_pool_name = "default"
    #  libvirt.management_network_mac = "5e:c0:28:e2:a4:f9"
    #end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
