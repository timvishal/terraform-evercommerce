resource "aws_sns_topic_subscription" "tf-cloudtrail-events" {
  topic_arn = aws_sns_topic.tf-cloudtrail-events.arn
  protocol  = "email"
  endpoint  = var.aws_sns_topic_subscription
}
