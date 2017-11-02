# Vagrant for Qtum
## Setup
You need to install [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/).
*Note the latest version of VirtualBox (5.2) is not supported by Vagrant.*

### Install the latest Qtum release
```shell
git clone git@github.com:qtumproject/qtum-vagrant.git
cd qtum-vagrant/latest
vagrant up
```

### Compile from latest repo
This requires **2048MB** memory at least.
```shell
git clone git@github.com:qtumproject/qtum-vagrant.git
cd qtum-vagrant/env
vagrant up
```
