#!/bin/bash
# script to bootstrap setting up a mac with ansible 

echo "==========================================="
echo "Setting up your mac using daemonza/setupmac"
echo "==========================================="

sudo easy_install pip
sudo easy_install ansible

git clone https://github.com/daemonza/setupmac.git
cd setupmac

ansible-playbook -i ./hosts playbook.yml --verbose