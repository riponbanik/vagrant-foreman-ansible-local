# Vagrant-Foreman-Ansible

To get started, perform a git clone on this repository. Make sure you have [Vagrant installed](https://docs.vagrantup.com/v2/installation/), [VirtualBox](https://www.virtualbox.org/wiki/Downloads) or [LibVirt](https://libvirt.org/), and [Ansible](https://www.ansible.com/) for automation.

This repository is created from the code taken from [Jexia Github Repo](https://github.com/jexia-com/vagrant-foreman-ansible)
Repository will install for you Foreman 1.16.+ with PuppetMaster and PuppetDB 4.+ version .
* **Before starting please make sure that you have the IP address 192.168.56.12 or your own ip configured as foreman.lab.local. You can run the following to get this done:**
```
sudo echo '192.168.56.12 foreman.lab.local' >> /etc/hosts
```
Start with Git Clone
```
git clone https://github.com/riponbanik/vagrant-foreman-ansible-local.git
cd vagrant-foreman-ansible
vagrant up --provider virtualbox
or
vagrant up --provider libvirt
```

Once vagrant is done provisioning the VMs run `vagrant status` to confirm all instances are running:

```
Visit the web UI by browsing to https://foreman.lab.local
```
## If you want to add another vm to Foreman please do:
```
cd pullfm
vagrant up --provider virtualbox
or
vagrant up --provider libvirt
```
Above VM will automatically install Puppet and connect to Foreman.

## If you want to login into Vagrant VM run:
```
vagrant ssh
```

## When you're done, you can shut down the cluster using
```
vagrant destroy -f
```
## If you want to change any of the configuration/scripts run
```
vagrant provision
```
`This Repository is going to help you get comfortable with this test environment where you can learn how Foreman works and how to install it`.
