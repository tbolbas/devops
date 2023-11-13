provider "aws" {
  region = "us-east-1"
}

locals {
  vpc_name = "tbolbas-${terraform.workspace}-vpc"
}

resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_blocks
  instance_tenancy = "default"

  tags = {
    Name = local.vpc_name
  }
}
