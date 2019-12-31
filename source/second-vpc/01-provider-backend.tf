provider "aws" {
  region = var.region
}

# terraform {
#     backend "s3" {
#     bucket = "terraform-tfstate-huseyin"
#     key    = "t2-terraform-second-vpc"
#     region = "us-east-1"
#   }
# }
