# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise32"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine.
  config.vm.network :forwarded_port, guest: 3200, host: 3200

  config.vm.synced_folder "srv/", "/srv/"

  config.vm.provision :salt do |salt|
    ## Minion config is set to ``file_client: local`` for masterless
    salt.minion_config = "srv/minion"
    salt.run_highstate = true
  end

end
