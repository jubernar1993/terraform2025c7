terraform {
  required_providers {
    aws = {
      version = "6.14.1"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

