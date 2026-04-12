provider "aws" {
  region = "ap-southeast-2" # Change to your preferred region
}

terraform {
  backend "s3" {
    bucket = "my-tf-statefile-osh-bucket" # Must be created manually first
    key    = "lambda-api/terraform.tfstate"
    region = "ap-southeast-2"
  }
}