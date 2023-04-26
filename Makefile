init:
	terraform -chdir=terraform init

apply:
	terraform -chdir=terraform apply

plan:
	terraform -chdir=terraform plan

destroy:
	terraform -chdir=terraform destroy

copy-vars:
	ansible-playbook --vault-password-file local.vault-password ansible/copy-vars.yml -i ansible/inventory.ini -vvv

install:
	ansible-galaxy install -r ansible/requirements.yml

prepare:
	make install & ansible-playbook --vault-password-file local.vault-password ansible/prepare.yml -i ansible/inventory.ini

deploy:
	ansible-playbook --vault-password-file local.vault-password ansible/deploy.yml -i ansible/inventory.ini

encrypt-vault:
	ansible-vault encrypt ansible/group_vars/*/vault.yml

decrypt-vault:
	ansible-vault decrypt ansible/group_vars/*/vault.yml

