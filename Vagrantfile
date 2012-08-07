# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "base"
  config.vm.box_url = "http://domain.com/path/to/above.box"
  config.vm.network :hostonly, "12.0.0.2"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "env/cookbooks"
    chef.add_recipe "freeswitch"
  end
end
