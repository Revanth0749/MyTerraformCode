terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "tf-state-bucket-demoenv"
    key = "terraform/state.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-south-1"
}


resource "aws_s3_bucket" "tf-state" {
  bucket = "tf-state-bucket-demoenv"
  tags = {
    Name = "Terraform-state-bucket"
    Environment = "Demo"
  }
}

resource "aws_s3_bucket_versioning" "tf-state-version" {
  bucket = aws_s3_bucket.tf-state.id
  versioning_configuration {
    status = "Enabled"
  }
}
