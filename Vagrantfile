# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'yaml'

dir = File.dirname(File.expand_path(__FILE__))
data = YAML.load_file("#{dir}/config/config.yaml")


# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
Vagrant.configure(2) do |config|
  config.vm.box = "#{data['vm']['box']}"
  config.vm.box_url = "#{data['vm']['url']}"
  config.vm.host_name = "#{data['vm']['hostname']}"
	config.vm.network :private_network, ip: "#{data['vm']['ip']}"
	config.vm.network "forwarded_port", guest: 80, host: "#{data['vm']['hostport']}"
	config.ssh.forward_agent = true

	config.vm.provider :virtualbox do |v|
		v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--memory", "#{data['vm']['ram']}"]
    v.customize ["modifyvm", :id, "--name", "#{data['vm']['hostname']}"]
  end
	config.vm.synced_folder "./", "/vagrant"

  config.vm.provision "shell" do |s|
    s.path = "server/shell/init.sh"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "server/puppet/manifests"
    puppet.manifest_file = "node.pp"
    puppet.module_path = "server/puppet/modules"
  end
end
