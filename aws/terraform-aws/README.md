## Terraform AWS lab

Small AWS lab that to get familiar with some Terraform basic concepts

### Providers:
- AWS 
- Local
- Random

### Created resoruces:
- VPC
- Two Subnets
- Internet Gateway
- Route table
- Route table association with public subnet
- SSH Security Group
- RSA Key pair
- EC2 isntance

### Description

This Terraform code will create an EC2 instance, a Key pair, two random strings that will we used to create a username and a password and all of the necessary networking components (vpc, subent, IGW, RT, SG, etc..) to enable SSH access to the EC2 instance.

### Deployment

Just run `terraform-init` to install the providers, `terraform-apply` and approve. This will create the resources and will output the new ssh user username and password, and also the public ip of the newly created SSH instance. 

### EC2 instance access

During creation, the EC2 instance runs a script from the [user_data](https://github.com/matiasg1200/terraform/blob/67c1db385249b848a2c593e46caad8d5b1590985/aws/terraform-aws/main.tf#L124) attribute that enables ssh password authentication, creates a new user and resets its password. This new user account is outputed to the terminal after deployment and can be used to ssh into the instance.