# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.ssh.insert_key = false

  config.vm.define "vagrant1" do |vagrant1|
    vagrant1.vm.box = "ubuntu/trusty64"
#    vagrant1.vm.network "forwarded_port", guest: 80, host: 8080
#    vagrant1.vm.network "forwarded_port", guest: 443, host: 8443
  end
  config.vm.define "vagrant2" do |vagrant2|
    vagrant2.vm.box = "puppetlabs/centos-6.6-64-nocm"
#    vagrant2.vm.network "forwarded_port", guest: 80, host: 8081
#    vagrant2.vm.network "forwarded_port", guest: 443, host: 8444
  end
end
