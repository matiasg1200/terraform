## Terraform playground

This repo works as a small Terraform playground that uses different conecetps and features to deploy resorcues into two different cloud providers. 

### AWS

Creates a small environement consistning of an EC2 server with all of the required networking components, uses EC2 user_data to create a new user and enable ssh passowrd authentication, creates a username and passoword for the new EC2 user and also creates a Key pair that can be used to SSH into the server 

### GCP

Using a custom local module, creates a small environement consistning of a Compute Engine instances with all of the required networking components and uses Compute Engine startup script to install a web server with a custom index on the instance
