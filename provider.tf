terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.99.1"
    }
  }
  #   backend "s3" {
  #     bucket       = ""
  #     key          = "security-group"
  #     region       = "us-east-1"
  #     use_lockfile = true
  #     encrypt      = true
  #   }
}

provider "aws" {
  region = "ap-south-1"
}