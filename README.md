FreeSWITCH Vagrant Box
======================

A quick and easy FreeSWITCH box for playing/hacking on. 

This uses Vagrant to spin up a local virtual machine and will install FreeSWITCH for you automatically on the vm. 

Installation
------------

1. Install `Virtual Box <https://www.virtualbox.org/>`_ - a cross platform virtual machine program by Oracle

2. Install `Vagrant <http://www.vagrantup.com>`_ - a virtual machine provisioner making it easier than ever to automate virtual machine setups

3. Check out the code...

4. In your terminal, go to the code directory and type: vagrant up (FYI - on first usage this downloads a rather large (1 gig) virtual machine file)

That is all! You now have FreeSWITCH running in a virtual machine on your local box.


Access
------

You can access the VM by default by SSH on IP 12.0.0.1 on the standard port. This is a host-only network that isn't exposed to the web.
I will add an alternate configuration in the Vagrantfile so you can expose this box to the ouside world if you so choose.