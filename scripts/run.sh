#!/bin/sh

# Root Directory
DIR=~/.dev-env

ansible-playbook -vvvv --ask-become-pass -i $DIR/hosts $DIR/playbooks/main.yml
