resource "aws_s3_bucket" "remote_backend" {
  bucket = "tfstate-remote-s3-bucket-lab-823901"

  tags = {
    Name        = "Terraform"
    Environment = "Dev"
  }
}