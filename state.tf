terraform {
  backend "s3" {
    bucket = "my-terraform-bucket-sruthi"
    key    = "params/terraform.tfvars"
    region = "us-east-1"
  }
}