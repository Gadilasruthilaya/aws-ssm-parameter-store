terraform {
  backend "s3" {
    bucket = "my-terraform-bucket-sruthi"
    key    = "dev/terraform.tfvars"
    region = "us-east-1"
  }
}