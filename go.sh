#!/usr/bin/env bash
echo "Deleting andrasfindt.* playbooks"
rm -rf ./roles/andrasfindt.*
echo "Installing requirements"
ansible-galaxy install -r requirements.yml -p ./roles
echo "Executing playbook"
ansible-playbook playbook.yml -vv -u build --extra-vars '@secrets' --vault-password-file=vault.txt -i hosts.yml
