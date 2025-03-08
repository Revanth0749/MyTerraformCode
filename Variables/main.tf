resource "aws_vpc" "terraform-vpc" {
  cidr_block = var.vpc_cidr
  tags = merge(var.tags, { Name = "MyVPC" })
}
