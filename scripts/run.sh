#!/bin/sh

# Root Directory
DIR=~/.dev-env

ansible-playbook --ask-become-pass -i $DIR/hosts $DIR/playbooks/main.yml
