provider "aws" {
  region = "us-west-2"
}


resource "aws_s3_bucket" "example" {
  bucket = "demo-terraform-eks-state-bucket"
  lifecycle {
    prevent_destroy = false
  }
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}