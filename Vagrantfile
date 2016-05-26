# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

installed = false
required_plugins = %w(vagrant-vbguest vagrant-vbox-snapshot vagrant-cachier)
required_plugins.each do |plugin|
  if !Vagrant.has_plugin? plugin
    system "vagrant plugin install #{plugin}"
    installed = true
  end
end

if installed === true
  system "vagrant reload"
  exit
end

Vagrant.configure(2) do |config|
  if Vagrant.has_plugin?("vagrant-cachier")
      config.cache.scope = :box
  end

  # Box setting
  config.vm.box = "ubuntu_15.04"
  config.vm.box_url = "https://github.com/kraksoft/vagrant-box-ubuntu/releases/download/15.04/ubuntu-15.04-amd64.box"

  # Network setting
  config.vm.hostname = "atika.local"
  config.vm.network "private_network", ip: "192.168.10.10"

  # Set up editor and terminal
  config.vm.provision "shell", privileged: true, path: "scripts/init.sh"

  # Set up nodejs
  config.vm.provision "shell", privileged: true, path: "scripts/nodejs.sh"
end
