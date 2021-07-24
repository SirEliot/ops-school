#!/bin/bash
#add fix to exercise5-server2 here
sudo sed  -i  's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/i' /etc/ssh/ssh_config

cat /vagrant/fixScripts/keys/id_rsa_srv2 > /home/vagrant/.ssh/id_rsa
cat /vagrant/fixScripts/keys/id_rsa_srv2.pub > /home/vagrant/.ssh/id_rsa.pub

sudo chmod 0644 /home/vagrant/.ssh/id_rsa.pub
sudo chmod 0600 /home/vagrant/.ssh/id_rsa

cat /vagrant/fixScripts/keys/id_rsa_srv1.pub >> /home/vagrant/.ssh/authorized_keys
