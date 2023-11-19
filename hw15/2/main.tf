provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "tbolbas-vpc"
  cidr = "159.0.0.0/16"

  azs             = ["us-east-1a"]
  private_subnets = ["159.0.1.0/24"]
  public_subnets  = ["159.0.101.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Name = "tbolbas-vps-test"
  }
}
