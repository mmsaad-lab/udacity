terraform {
   backend "s3" {
     bucket = "terraform-state-mmsaad" # Replace it with your S3 bucket name
     key    = "terraform/terraform.tfstate"
     region = "us-east-2"  # Update to your desired region
   }
 }

 provider "aws" {
   region = "us-east-2"

   default_tags {
     tags = local.tags
   }
 }
