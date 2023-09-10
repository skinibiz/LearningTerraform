#Terraform
# Optional configuration for the Terraform Engine but include this
terraform {
  # required to ensure the terraform doesn't run with an older version. 
  required_version = ">=0.12.0"

  # remote backends
}

# Resources
# main building block for terraform for objects managed by Terraform such as VMs or S3 buckets or other services
# Declaring a resource tells Terroform to create and manage it. If the resource already exists, it must be imported
# into Terraform's state and managed. 
resource "aws_s3_bucket" "reflabelforbucket" {
  bucket = "skinibizapps-dlakehouse-us-west-2"
  tags = {
    "owner"  = "shailesh",
    "region" = "us-west-2"
  }
}

resource "aws_lakeformation_data_lake_settings" "skinibizapps-dlakehouse-us-west-2" {

}


output "greetings" {
  value = "Hello world, here is terraform"
}


# provider blocks are also options but it is a best practice to include version for reproducible builds
provider "aws" {
  region  = "us-west-2"
  profile = "my-dev-profile"
}

# Data Sources
# Objects not managed by Terraform

data "aws_caller_identity" "current" {}

data "aws_availability_zones" "available" {
  state = "available"
}
