#!/bin/bash

sudo apt-get update
sudo apt-get install -y software-properties-common python-keyczar
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install -y ansible
ansible --version

