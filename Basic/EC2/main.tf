terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "terraform-ec2" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  key_name = "ec2-key"
  associate_public_ip_address = true
  tags = {
    Name = "terraform-ec2"
  }
}
