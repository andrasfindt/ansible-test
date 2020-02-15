#####install roles
`$ ansible-galaxy install -r requirements.yml -p ./roles`
#####run the thing 
`$ ansible-playbook playbook.yml -vv -u slave --extra-vars '@secrets' --vault-password-file=vault.txt -i hosts.yml`