#Vagrant SERVER BOX
This Vagrant Box contains:

- Vim
- NGINX
- fail2ban
- unattended-upgrades


###REQUIREMENTS:
VirtualBox: [https://www.virtualbox.org/](https://www.virtualbox.org/)

Vagrant: [Vagrantup.com](http://www.vagrantup.com)

###To Use:

1.  Clone the repo and `cd` into the directory.
2.  Modify `config/config.yml` to fit your needs
3.  Run `vagrant up` to boot up the Server Box.
4.  Run `vagrant ssh` to ssh into the Server Box. The box does not have a `sudo` password.
5.  Any file you create in the directory will automatically be symlinked into the `/vagrant` folder
