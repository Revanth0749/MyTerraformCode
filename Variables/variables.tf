variable "vpc_cidr" {
  description = "CIDR Range for demo VPC"
  type = string
}

variable "tags" {
  description = "Common Tags for demo VPC"
  type = map(string)
}

variable "subnet_cidrs" {
  description = "CIDR Range for public and private subnets"
  type = map(string)
}

variable "region" {
  description = "AWS region to create VPC"
  type = string
}
