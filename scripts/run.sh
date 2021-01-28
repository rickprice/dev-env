#!/bin/sh

# Root Directory
DIR=~/.dev-env

ansible-playbook --ask-become-pass $DIR/playbooks/main.yml
