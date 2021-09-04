
# Packer Digital Oceans Mongo DB Server snapshot

Purpose of the repository is to provide a basic instruction set  
for creating a ready to deploy Mongo database server instance
## Installation

This code base was run on a Digital Oceans Ubuntu 18.04 x64 server droplet  
The installion of the Hashicorp Packer software is stepped through here :  

[Install Packer](https://learn.hashicorp.com/tutorials/packer/get-started-install-cli)  

## Running the build  
FIRST  
Be sure to replace the text string in variables.json file with your Digital Oceans  
API token  
Then from your terminal in the project root you can run  

```bash
packer validate -var-file=variables.json template.json  

packer build -var-file=variables.json template.json
```  
## Results  
The following image is what you should see at the end of the packer build  
IMPORTANT not at the bottom of the terminal return is a ID # (xxxxxxxxxxx)  
Be certain to record that number down as it will be needed to identify this snapshot  
when you want to deploy this image using Hashicorp Terraform

![](images/terminal.png?raw=true)  

The digital oceans console should have the snapshot image  

![](image/snapshotweb.png?raw=true)  

## Why create automated snap shots
Well for one it produces more stable consistent deployments, your environments are always the same  
Tools like Packer Terraform  Ansible all work to provide the same base everytime, repeatable and capable of being automated.  
I'll leave you with an amazing speach given about the benefits  
## Video  
[IaaS video](https://www.youtube.com/watch?v=RTEgE2lcyk4)  

## License
[MIT](https://choosealicense.com/licenses/mit/)
