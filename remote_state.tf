terraform {
  backend "s3" {
    bucket = "seacowbucket"
    key    = "demo/terraform.tfstate"
    region = "us-east-1"
  }
}