# Vagrantfile
Vagrant.configure("2") do |config|
  # Jeff Geerling’s Ubuntu 20.04 base box
  config.vm.box = "geerlingguy/ubuntu2004"

  config.vm.hostname = "week6-host"
  config.vm.network "private_network", ip: "192.168.56.10"

  # Ansible is run from host; Vagrant just brings up the guest
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
    vb.cpus = 2
  end
end
