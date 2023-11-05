terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.19.0"
    }
  }

/*
  backend "s3" {
    bucket = "aws-tf-bucket-state"
    key    = "state"
    region = "eu-west-1"
  }
  */
}