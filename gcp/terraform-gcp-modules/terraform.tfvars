instance_labels = {
  "env"     = "dev"
  "project" = "playing-with-tf-mmodules"
  "owner"   = "me"
  "region"  = "us-east-1"
}

instance_machine_type = {
  "micro"  = "e2-micro"
  "small"  = "e2-small"
  "medium" = "e2-medium"
}

instance_name   = "web-server"

vpc_name        = "web-server-vpc"

vpc_subnet_name = "web-server-subnet"

vpc_subnet_cidr = "10.0.10.0/24"
