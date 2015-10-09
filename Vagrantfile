# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # This box is Ubuntu 14.04 LTS with Salt pre-installed
  config.vm.box = "rubicon/ubuntu1404-salt"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512"]
    vb.name = "freeswitch"
  end


  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "12.0.0.2"

  # Bridged networks make the machine appear as another physical device on
  # your network.
  #config.vm.network "public_network"

  config.vm.synced_folder "salt/roots/freeswitch/", "/srv/salt/"
  config.vm.synced_folder "freeswitch", "/etc/freeswitch"

  config.vm.provision :salt do |salt|
    salt.minion_config = "salt/minion"
    salt.bootstrap_options = "-F -c /tmp -P"
    salt.run_highstate = true
    salt.pillar({
      "freeswitch" => {
        "version" => "v1.4.6",
        "use_debs" => false,
      }
    })
    salt.log_level = 'all'
  end

end
