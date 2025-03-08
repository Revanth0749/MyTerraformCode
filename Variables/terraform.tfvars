vpc_cidr = "192.0.0.0/24"
tags = {
  Name = "Terraform-VPC"
  Env = "demo"
}
subnet_cidrs = {
    public = "192.0.1.0/24"
    private = "192.0.2.0/24"
}
region = "ap-south-1"
