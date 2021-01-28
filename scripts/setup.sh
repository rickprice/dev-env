#!/bin/sh

# Current directory
DIR=~/.dev-env

# Install Git, Python3, PIP and Ansible
sudo apt-get install -y git python3 python3-pip ansible

# Install external roles
mkdir -p $DIR/.external-roles
ansible-galaxy install -p $DIR/.external-roles -r $DIR/requirements.yml

# Make run script executable and link it
chmod u+x $DIR/scripts/run.sh
sudo ln -sf $DIR/scripts/run.sh /usr/bin/dev-env
