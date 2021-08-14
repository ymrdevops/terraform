terraform {
    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~>3.20"
      }
    }
}

provider "aws" {
    profile = "default"
    region = "ap-south-1"  
}

provider "aws" {
  profile = "default"
  region = "ap-east-1"
  alialias = "aws-ap-east-1"  
}

resource "aws_instance" "ec2-start" {
    ami = "ami-04db49c0fb2215364"  
    instance_type = "t2.micro"
    tags = {
      "Name" = "Learning-${count.index}"
    }
    count = 1
}