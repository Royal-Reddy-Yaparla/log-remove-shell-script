#!/bin/bash

# Setup Hostname
hostnamectl set-hostname "$1"

cd

# Update the hostname part of Host File
sudo echo "`hostname -I | awk '{ print $1 }'` `hostname`" >> /etc/hosts

# Refresh
/bin/bash

# Back to normal user
exit