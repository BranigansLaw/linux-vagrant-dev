# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "gusztavvargadr/windows-10"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.  
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = 24000
    vb.cpus = 6
  end
  
  config.vm.provision "file", source: "./dev-tools-setup.ps1", destination: "C:/tmp/dev-tools-setup.ps1"

  # Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
  # restart
  config.vm.provision "shell", privileged: "true", powershell_elevated_interactive: "true", path: "./dev-tools-setup.ps1"
  #restart
  #wsl --install -d ubuntu
end
