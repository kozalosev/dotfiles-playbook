#!/bin/bash

echo 'Ensure you have put your "id_ecdsa" key into the root directory of this repository.'
echo 'Ensure you modify "hosts.info" with actual addresses and ports of your servers.'
echo

read -p 'Continue? [y/N] ' ok
if [ -z "$ok" ] || [ "$ok" != "y" ]; then
    exit
fi

read -p 'Hosts: ' hosts
read -p 'User: ' username

ansible-playbook playbook.yml --extra-vars "HOSTS=$hosts" --extra-vars "USERNAME=$username"

