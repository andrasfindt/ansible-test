#!/usr/bin/env bash

rm -rf ./roles && ansible-galaxy install -r requirements.yml -p ./roles &&  ansible-playbook playbook.yml -vvv -u build --extra-vars '@secrets' --vault-password-file=vault.txt -i hosts.yml
