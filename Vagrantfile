# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.define "catalog-test"
  config.vm.hostname = "catalog-test"
  config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
     vb.gui = true
     vb.name = "catalog-test-station"
  end
  # Recent ubuntu image doesn't have python 2.x installed by default. Needed for ansible.
  config.vm.provision "shell", path: "vagrant-python.sh"
  # Run the base playbook and have generated inventory groups be correct
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "catalog-station.yml"
    ansible.groups = {
      "catalog-stations" => ["catalog-test"]
    }
  end
end
