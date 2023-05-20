# create-vm-terraform

Edit terraform variables in 00-variable.tf, 01-data.tf and 10-provider.tf
in backend.tf, the "http" backend was defined. Get Token in your project setting in gitlab and Just change "project_number", "terraform_state_name", "user" and "Token".Now you can run terraform

terraform init

terraform plan

terraform apply

you can also create kickstart file to install OS by running ansible role.

Edit variables in roles/vmware/vars then run:

ansible-playbook create.yml

kickstart example for installing rocky Linux:

ex-ks-rocky.cfg
