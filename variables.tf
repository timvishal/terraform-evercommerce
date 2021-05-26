#variable "aws_s3_bucket_name" {
#description = "Bucket for cloud trail"
#type        = string
#}


variable "aws_profile" {
  default = "default"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "aws_s3_bucket" {
  description = "Cloud trail bucket name"
  default = "alm-test-cloudtrail-allmanagement-s3usw2"
}

variable "aws_sns_topic_subscription" {
  default = "vdhiman@beesolvertechnology.com"
  description = "Email address of subscriber"
}

variable "sns_display_name" {
  description = "Alert Name of subsdiaries"
  default = "AWS ALM Corp Alerts"
}

variable "aws_s3_bucket_tf_state" {
description = "S3 bucket Name of tf-state"
default = "terraform-state-SUBS-NAME"
}

