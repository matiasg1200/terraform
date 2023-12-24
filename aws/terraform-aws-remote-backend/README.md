## Remote backend

Creates s3 bucket to store state for terrafrom-aws. This is optional in case you want to test remote backends.

### Deployment

Run `terraform init` to install the providers and `terraform apply` to create the buecket.
> If you want to use the remote backend and the bucket creation fails because the name is already taken, change the [bucket name](https://github.com/matiasg1200/terraform/blob/67c1db385249b848a2c593e46caad8d5b1590985/aws/terraform-aws-remote-backend/main.tf#L2) and after it has been created succefully update the name at the [backend block](https://github.com/matiasg1200/terraform/blob/67c1db385249b848a2c593e46caad8d5b1590985/aws/terraform-aws/terraform.tf#L24) of the terraform-aws project. 

### Clean up

AWS wont let you delete the bucket if it has anything on it so you will have to delete evetyhitng from the bucket either using the console or the AWS CLI and then run `terraform destroy` to delete the buecket itself