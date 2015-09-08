# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "scotch/box"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.hostname = "scotchbox"
    config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]
    config.vm.synced_folder "../../workspace/", "/var/www/public/", :nfs => { :mount_options => ["dmode=777","fmode=666"] }
    config.vm.network "forwarded_port", guest: 1080, host: 1080
    # Jekyll
    config.vm.network "forwarded_port", guest: 4000, host: 4000

    #http://docs.vagrantup.com/v2/provisioning/shell.html
    #config.vm.provision "shell", path: "provision/pimpMyBox.sh"

end
