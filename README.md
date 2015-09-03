# FreeSWITCH Vagrant Box

A quick and easy FreeSWITCH box for playing/hacking on. 

This uses [Vagrant](http://www.vagrantup.com) to spin up a local virtual machine and will install FreeSWITCH for you automatically on the vm. 

### Prerequisites


* [Virtual Box](https://www.virtualbox.org/) - a cross platform virtual machine program by Oracle
* [Vagrant](http://www.vagrantup.com) - a virtual machine provisioner making it easier than ever to automate virtual machine setups


### Installation


1. Check out/download the code...

1. In your terminal, go to the code directory and type: `vagrant up`. This will download your Ubuntu virtual machine and install FreeSWITCH on it from packages.

1. When it finishes, type `vagrant ssh` to get to the terminal of your new virtual machine

1. Copy the vanilla config into the FreeSWITCH configuration folder: `sudo cp -a /usr/share/freeswitch/conf/vanilla /etc/freeswitch`

1. Type `sudo service freeswitch start`

1. Party on!!!


### Notes

* Shutdown the vm for later using `vagrant halt` (to boot back up simply use `vagrant up` again)
* Pause the vm in its current stat using `vagrant suspend` (to resume the vm use `vagrant resume`)

