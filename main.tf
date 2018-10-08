terraform {
  backend "s3" {
    bucket                 = "terraform-state-2036"
    key                    = "vpc/terraform.tfstate"
    region                 = "eu-west-1"
  }
}

resource "aws_vpc" "default" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Name          = "${var.vpc_name}"
    Deployment    = "${var.deployment_method}"
    Environment   = "${var.environment}"
  }
}

