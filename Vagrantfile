# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.synced_folder (ENV['HOME']).to_s, '/vagrant_data'
  config.vm.define 'centos5' do |centos5|
    centos5.vm.box = 'mramiro/centos5'
  end
  config.vm.define 'centos6' do |centos6|
    centos6.vm.box = 'centos/6'
  end
  config.vm.define 'centos65' do |centos65|
    centos65.vm.box = 'nrel/CentOS-6.5-x86_64'
  end
  config.vm.define 'centos67' do |centos6|
    centos6.vm.box = 'webopninjas/centos-6.7'
  end
  config.vm.define 'centos7' do |centos7|
    centos7.vm.box = 'centos/7'
  end
  config.vm.define 'centos8' do |centos8|
    centos8.vm.box = 'centos/8'
  end
  config.vm.define 'debian8' do |debian8|
    debian8.vm.box = 'debian/jessie64'
  end
  config.vm.define 'debian9' do |debian9|
    debian9.vm.box = 'debian/stretch64'
  end
  config.vm.define 'ubuntu1404' do |ubuntu1404|
    ubuntu1404.vm.box = 'ubuntu/trusty64'
  end
  config.vm.define 'ubuntu1404_puppet' do |ubuntu1404|
    ubuntu1404.vm.box = 'ubuntu/trusty64'
    ubuntu1404.vm.provision 'puppet'
  end
  config.vm.define 'ubuntu1504' do |ubuntu1504|
    ubuntu1504.vm.box = 'ubuntu/vivid64'
  end
  config.vm.define 'ubuntu1604' do |ubuntu1604|
    ubuntu1604.vm.box = 'ubuntu/xenial64'
  end
  config.vm.define 'ubuntu1604dev' do |ubu|
    ubu.vm.box = 'box-cutter/ubuntu1604-desktop'
    %w(fixgnome atom vscode).each do |script|
      ubu.vm.provision 'shell', path: "./scripts/ubuntu1604dev.#{script}.sh"
    end
  end
  config.vm.define 'ubuntu1804' do |ubuntu1804|
    ubuntu1804.vm.box = 'ubuntu/bionic64'
  end
  config.vm.define 'winserv2012std' do |win12|
    win12.vm.box = 'devopsgroup-io/windows_server-2012r2-standard-amd64-nocm'
    win12.vm.communicator = 'winrm'
    win12.vm.guest = :windows
    win12.vm.network :forwarded_port, guest: 3389, host: 3389
    win12.vm.network :forwarded_port, guest: 5985, host: 5985, id: 'winrm', auto_correct: true
    win12.vm.network :forwarded_port, guest: 22, host: 2222, id: 'ssh', auto_correct: true
    win12.vm.provider :virtualbox do |vb|
      vb.customize ['modifyvm', :id, '--memory', 1024]
    end
    config.vm.synced_folder (ENV['HOME']).to_s, '/vagrant_data', disabled: true
    # Vagrant can't synch to/with a pre-existing guest folder; add 'home' folders as needed
    %w(.aws .ssh).each do |fld|
      config.vm.synced_folder ((ENV['HOME']).to_s + '/' + fld), "/Users/vagrant/#{fld}"
    end
  end
  config.vm.define 'winserv2016eval' do |win16|
    win16.vm.box = 'StefanScherer/windows_2016_docker'
    win16.vm.communicator = 'winrm'
    win16.vm.guest = :windows
    win16.vm.network :forwarded_port, guest: 5985, host: 5985, id: 'winrm', auto_correct: true
    win16.vm.network :forwarded_port, guest: 22, host: 2222, id: 'ssh', auto_correct: true
    win16.vm.provider :virtualbox do |vb|
      vb.customize ['modifyvm', :id, '--memory', 2048]
    end
    config.vm.synced_folder (ENV['HOME']).to_s, '/vagrant_data', disabled: true
    %w(.aws .ssh).each do |fld|
      config.vm.synced_folder ((ENV['HOME']).to_s + '/' + fld), "/Users/vagrant/#{fld}"
    end
  end
  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end
