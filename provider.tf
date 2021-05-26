provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.42.0"
    }
  }
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "terraform-state-SUBS-NAME"  ################ need to create that bucket from "terraform-s3-state" terraform configuration ###############
    key    = "tf-state/terraform.tfstate"
    region = "us-east-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks" ################ need to create that Dynammo from "terraform-s3-state" terraform configuration ###############
    encrypt        = true
  }
}

