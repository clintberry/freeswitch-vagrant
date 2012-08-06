FreeSWITCH Vagrant Box
======================

A quick and easy FreeSWITCH box for playing/hacking on. 

This uses [Vagrant](http://www.vagrantup.com) to spin up a local virtual machine and will install FreeSWITCH for you automatically on the vm. 

Installation
------------

1. Install [Virtual Box](https://www.virtualbox.org/) - a cross platform virtual machine program by Oracle

2. Install [Vagrant](http://www.vagrantup.com) - a virtual machine provisioner making it easier than ever to automate virtual machine setups

3. Check out/download the code...

4. In your terminal, go to the code directory and type: `vagrant up` (FYI - on first usage this takes some time to download and then install FreeSWITCH)

That is all! You now have FreeSWITCH running in a virtual machine on your local box.


Usage
------

You can access the VM through SSH on IP 12.0.0.1 on the standard port. This is a host-only network that isn't exposed to the web.
I will add an alternate configuration in the Vagrantfile so you can expose this box to the ouside world if you so choose.

After you have installed for the first time with `vagrant up`, you can:

1. Shutdown the vm for later using `vagrant halt` (to boot back up simply use `vagrant up` again)
2. Pause the vm in its current stat using `vagrant suspend` (to resume the vm use `vagrant resume`)

