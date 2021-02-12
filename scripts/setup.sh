#!/bin/sh

# Current directory
DIR=~/.dev-env

# Install Ansible PPA
#sudo add-apt-repository -y ppa:ansible/ansible
#sudo apt-get update

# Install Git, Python3, PIP and Ansible
sudo apt-get install -y git python3 python3-pip ansible python-pexpect

# Install collections
ansible-galaxy collection install community.general

# Install external roles
mkdir -p $DIR/.external-roles
ansible-galaxy install -r $DIR/requirements.yml

# Make run script executable and link it
chmod u+x $DIR/scripts/run.sh
sudo ln -sf $DIR/scripts/run.sh /usr/bin/dev-env
