terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.7.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}


# Chamar o módulo VPC
module "vpc" {
  source = "../modules/01-vpc"

  vpc_cidr = "10.0.0.0/16"
  tags = {
    Environment = "Production"
    Owner       = "Terraform"
  }
}

/*

# Chamar o módulo Subnets
module "subnets" {
  source = "../modules/subnets"

  vpc_id                = module.vpc.vpc_id
  public_subnet_cidrs   = ["10.0.0.0/24", "10.0.1.0/24"]
  private_subnet_cidrs  = ["10.0.10.0/24", "10.0.11.0/24"]
  availability_zones    = data.aws_availability_zones.available.names
  tags = {
    Environment = "Production"
    Owner       = "Terraform"
  }
}

# Chamar o módulo Internet Gateway
module "internet_gateway" {
  source = "../modules/internet_gateway"

  vpc_id = module.vpc.vpc_id
  tags = {
    Environment = "prod"
    Owner       = "Terraform"
  }
}

# Chamar o módulo NAT Gateway
module "nat_gateway" {
  source = "../modules/nat_gateway"

  vpc_id                = module.vpc.vpc_id
  public_subnet_ids     = module.subnets.public_subnet_ids
  tags = {
    Environment = "prod"
    Owner       = "Terraform"
  }
}

# Chamar o módulo Route Tables
module "route_tables" {
  source = "../modules/route_tables"

  vpc_id                = module.vpc.vpc_id
  public_subnet_ids     = module.subnets.public_subnet_ids
  private_subnet_ids    = module.subnets.private_subnet_ids
  internet_gateway_id   = module.internet_gateway.internet_gateway_id
  nat_gateway_id        = module.nat_gateway.nat_gateway_id
  tags = {
    Environment = "prod"
    Owner       = "Terraform"
  }
}

# Chamar o módulo DNS
module "dns" {
  source = "../modules/dns"

  vpc_id                = module.vpc.vpc_id
  private_subnet_ids    = module.subnets.private_subnet_ids
  route_table_ids       = module.route_tables.route_table_ids
  tags = {
    Environment = "prod"
    Owner       = "Terraform"
  }
}
*/