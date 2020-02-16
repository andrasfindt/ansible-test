create vault
------------
create vault password file (for accessing the vault. - this should be externalised at some point)

make a vault and specify your user (sudo) password as `ansible_become_pass: <password>`

```bash
echo "vault_password" > vault.txt
ansible-vault create secrets --vault-password-file=vault.txt 
```

install roles
-------------

```bash
ansible-galaxy install -r requirements.yml -p ./roles
```

run the thing
-------------

```bash
ansible-playbook playbook.yml -vv -u slave --extra-vars '@secrets' --vault-password-file=vault.txt -i hosts.yml
```

use go.sh
---------
```bash
./go.sh
```