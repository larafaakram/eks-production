terraform {
  required_version = "~> 1.11.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket       = "akram-eks-production-s3"
    region       = "us-east-1"
    key          = "eks/terraform.tfstate"
    profile      = "default"
    use_lockfile = true
    encrypt      = true
  }
}

provider "aws" {
  region = var.aws-region
}
