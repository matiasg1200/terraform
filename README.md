## Terraform playground

This repo works as a small Terraform playground that uses different conecetps and features to deploy resorcues into different cloud providers. 

## Requierments

This repo deploys resoruces to AWS and GCP. 

- For AWS you will need an AWS account and an IAM account with the necessary permissions to create and destroy VPC and EC2 resources and optionally S3 (in case you want to leverage the remote backend). You will also need to provide authentication to the terraform provider. For detailed instructions about provider authentication check the [AWS provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication) documentation

- For GCP you will need access to the GCP console, an active project and an IAM account with the necessary permissions to create and destroy VPC and Compute Engine resources. You will also need to provide authentication to the terraform provider. For detailed instructions about provider authentication check the [GCP provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference#authentication) documentation

### AWS

Creates a small environement consistning of an EC2 instance with all of the required networking components, uses EC2 user data to create a new user and enable ssh passowrd authentication, creates a username and passoword for the new EC2 user and also creates a Key pair that can be used to SSH into the server 

### GCP

Using a custom local module, creates a small environement consistning of a Compute Engine instance with all of the required networking components and uses Compute Engine startup script to install a web server with a custom index on the instance
