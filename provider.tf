terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"  # Replace with the appropriate version constraint
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

