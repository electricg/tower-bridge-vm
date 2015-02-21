# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise32"

  config.vm.hostname = "tower-bridge"
  
  config.vm.network :private_network, ip: "192.168.50.4"
  
  config.vm.synced_folder "../tower-bridge-web", "/var/www/tower-bridge"
  
  # https://github.com/mitchellh/vagrant/issues/1673#issuecomment-28288042
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  
  config.vm.provision "shell", path: "bootstrap.sh"
end
