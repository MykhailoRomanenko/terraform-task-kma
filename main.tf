terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>4.16"
    }
  }

  required_version = ">=1.2.0"
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "lab5_ec2" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "Lab5RomanenkoEdited"
  }
}