
data "aws_caller_identity" "current" {}

resource "aws_cloudtrail" "tf-cloudtrail-events" {
  name                          = "tf-cloudtrail-events"
  s3_bucket_name                = aws_s3_bucket.tf-cloudtrail-events.id
  is_multi_region_trail 	= true
  enable_logging		= true
  enable_log_file_validation 	= true
  kms_key_id 			= aws_kms_key.tf-cloudtrail-events.arn
  cloud_watch_logs_group_arn = "${aws_cloudwatch_log_group.tf-cloudtrail-events.arn}:*"
  cloud_watch_logs_role_arn = aws_iam_role.tf-cloudtrail-events.arn

}





