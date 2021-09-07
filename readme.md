
# Packer Digital Oceans Mongo DB Server snapshot  
## recent update added Terraform folder to deploy Mongodb server

Purpose of the repository is to provide a basic instruction set  
for creating a ready to deploy Mongo database server instance  
I have split the code base into two folders packer and terraform follow the first set  
of instructions to create a digital snapshot of an Ubuntu 18.04 server with Mongo server installed  
go to the section labled Terraform to deploy 1 or many instances.  

## Installation

This code base was run on a Digital Oceans Ubuntu 18.04 x64 server droplet  
The installion of the Hashicorp Packer software is stepped through here :  

[Install Packer](https://learn.hashicorp.com/tutorials/packer/get-started-install-cli)  

## Running the build  
FIRST  
change directory cd to packer  
  
Be sure to replace the text string in variables.json file with your Digital Oceans  
API token  
Then from your terminal in the project root you can run  

```bash
packer validate -var-file=variables.json template.json  

packer build -var-file=variables.json template.json
```  
## Results  
The following image is what you should see at the end of the packer build  
IMPORTANT please note at the bottom of the terminal return is (ID: xxxxxxxxxxx)  
Be certain to record that number down as it will be needed to identify this snapshot  
when you want to deploy this image using Hashicorp Terraform

![](images/terminal.png?raw=true)  

The digital oceans console should have the snapshot image  
## Digital Oceans web console  

![](image/snapshotweb.png?raw=true)  

## Why create automated snap shots
Well for one it produces more stable consistent deployments, your environments are always the same  
Tools like Packer Terraform  Ansible all work to provide the same base everytime, repeatable and capable of being automated.  
I'll leave you with an amazing speach given about the benefits  
  
# Terraform  
## Installation

This code base was run on a Digital Oceans Ubuntu 18.04 x64 server droplet
The installion of the Hashicorp Packer software is stepped through here :

[Install Terraform](https://www.terraform.io/docs/cli/install/apt.html)

## Running the build
FIRST
change directory cd to terraform

Be sure to replace the text string in definitions.tfvars file with your Digital Oceans
API token and your ssh_fingerprint, sprcify the number of instances in instance_count  
and lastly modify the comment and number in d0_snapshot_id to only the number value of the snapshot you created with packer  

Then from your terminal in the project terraform directory you can run

```bash
terraform init  

terraform validate  

terraform plan -var-file="definitions.tfvars"  

terraform apply -var-file="definitions.tfvars"

```   
If after you are finished and no longer need the asset you have created you can easily run  
```bash

terraform destroy -var-file="definitions.tfvars"

```  
## Further information on Terraform and tutorials  

[Terraform](https://learn.hashicorp.com/terraform)  
 
    
## Video  
[IaaS video](https://www.youtube.com/watch?v=RTEgE2lcyk4)  

## License
[MIT](https://choosealicense.com/licenses/mit/)
