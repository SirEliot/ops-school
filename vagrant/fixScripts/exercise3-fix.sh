#!/bin/bash
#add fix to exercise3 here
#file does not exist
sudo sed -in 's/denied/granted/g' /etc/apache2/sites-enabled/000-default.conf
