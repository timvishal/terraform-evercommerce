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
    bucket = "terraform-state-SUBS-NAME"
    key    = "tf-state/terraform.tfstate"
    region = "us-east-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

