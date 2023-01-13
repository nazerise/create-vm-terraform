# create-vm-terraform

Edit terraform variables in 00-variable.tf, 01-data.tf and 10-provider.tf

terraform init

terraform plan

terraform apply

you can also create a ftp server and create kickstart file to install OS by running ansible role.

Edit variables in roles/vmware/vars then run:

ansible-playbook create.yml

kickstart example for installing rocky Linux:

ex-ks-rocky.cfg
