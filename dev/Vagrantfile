# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network :forwarded_port, host: 3889, guest: 3889
  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
  end
  config.vm.provision "shell" do |script|
    script.path = "script/build-qtum.sh"
  end
  config.vm.provision "shell", inline: "su ubuntu -c \"qtumd -daemon\"", run: "always"
end
