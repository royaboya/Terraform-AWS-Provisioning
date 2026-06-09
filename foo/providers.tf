terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.ue1

  default_tags {
    tags = {
      ManagedBy   = "Terraform"
      Environment = "dev"
    }
  }
}