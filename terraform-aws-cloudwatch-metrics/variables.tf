#variable "aws_s3_bucket_name" {
  #description = "Bucket for cloud trail"
  #type        = string
#}

variable "aws_account_id" {
  default = "833631067002"
}

variable "aws_profile" {
default = "default"
}

variable "aws_region" {
default = "us-east-1"
}

variable "aws_s3_bucket" {
default = "ds-test-cloudtrail-allmanagement-s3usw2"
}

variable "aws_sns_topic_subscription" {
default = "ds-test-cloudtrail-allmanagement-s3usw2"
}


variable "sns_display_name" {
default = "AWS ALM Corp Alerts"
}

