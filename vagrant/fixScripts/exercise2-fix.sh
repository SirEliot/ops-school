#!/bin/bash
#add fix to exercise2 here
sudo sed -in '$d' /etc/hosts
sudo apachectl -k graceful