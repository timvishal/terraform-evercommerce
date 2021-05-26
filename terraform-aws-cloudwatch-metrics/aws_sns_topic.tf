resource "aws_sns_topic" "tf-cloudtrail-events" {
  name = "CloudWatchAlarmsForCloudTrail-AlarmNotificationTopic"
  display_name = var.sns_display_name
}
