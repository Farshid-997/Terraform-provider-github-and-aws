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

  ami="ami-053b0d53c279acc90" #ubuntu
  instance_type="t2.micro"

  tags ={
    Name="example-server"
  }
}