variable "vpc_cidr" {
  type    = string
  description = "CIDR block for the VPC"
}

variable "tags" {
  type    = map(string)
  description = "Tags for the VPC"
  default = {
    Environment = "Production"
    Owner       = "Terraform"
  }
}