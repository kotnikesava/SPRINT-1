# Terraform Block
terraform {
  #required provider requirments
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "s3-terraform-statefile-task5"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
# Provider Block
provider "aws" {
  region = var.aws_region
}