terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "terraform-infra-guvi-14th-dec"
    key    = "infra.tf"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}


module "app-1" {
  source = "./terraform-modules/app-1"
  webapp-instance-type = "t2.micro"
}

module "app-2" {
  source = "./terraform-modules/app-2"
}