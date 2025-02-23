 terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.88.0"
    }
  }
}

provider "aws" {
  # Configuration options

  region="use-east-1"
}

resource "aws_instance" "example" {
  # Resource arguents

  ami=variable.aws_access_key #ubuntu
  instance_type=var.size

  tags ={
    Name=var.name
  }
}

resource "aws_iam_user" "user" {
  name="${var.username}-user " 
}

output "instance_ip_addr" {
  value = aws_instance.example.public_ip
}