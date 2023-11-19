provider "aws" {
  region = "us-east-1"
}

module "string" {
  source  = "terraform-aws-modules/ssm-parameter/aws"

  name  = "tbolbas-parameter"
  value = "my-value"
}
