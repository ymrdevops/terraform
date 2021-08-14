terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.20"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

provider "aws" {
  profile = "default"
  region  = "ap-east-1"
  alias   = "apeast1"
}

