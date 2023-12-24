variable "instance_labels" {
  type        = map(string)
  description = "standard labels"
}

variable "instance_machine_type" {
  type        = map(string)
  description = "Machine type to use"
}

variable "instance_name" {
  type        = string
  description = "Compute engine instance name"
}

variable "vpc_subnet_name" {
  type        = string
  description = "Subnet name"
}

variable "vpc_subnet_cidr" {
  type        = string
  description = "CIDR block to use on the subnet"
}

variable "vpc_name" {
  type        = string
  description = "VPC name"
}
