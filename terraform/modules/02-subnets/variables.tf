variable "public_subnet_cidrs" {
  type    = list(string)
  description = "CIDR blocks for the public subnets"
}

variable "private_subnet_cidrs" {
  type    = list(string)
  description = "CIDR blocks for the private subnets"
}

variable "tags" {
  type    = map(string)
  description = "Tags for the VPC"
  default = {
    Environment = "Production"
    Owner       = "Terraform"
  }
}