terraform {
  backend "s3" {
    bucket = "tf-state-bucket-demoenv"
    key = "terraform/state.tfstate"
    region = "ap-south-1"
    encrypt        = true
  }
}
