#!/usr/bin/env bash

rm -rf ./roles/andrasfindt.*
ansible-galaxy install -r requirements.yml -p ./roles
ansible-playbook playbook.yml -vv -u build --extra-vars '@secrets' --vault-password-file=vault.txt -i hosts.yml
