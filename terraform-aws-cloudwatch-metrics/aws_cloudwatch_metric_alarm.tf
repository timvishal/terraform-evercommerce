resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_SG" {
  alarm_name                = "CloudTrailSecurityGroupChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "SecurityGroupEventCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an API call is made to create, update or delete a Security Group."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_NACL" {
  alarm_name                = "CloudTrailNetworkAclChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "NetworkAclEventCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an API call is made to create, update or delete a Network ACL."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_GATEWAY" {
  alarm_name                = "CloudTrailGatewayChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "GatewayEventCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an API call is made to create, update or delete a Customer or Internet Gateway."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}


resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_VPC" {
  alarm_name                = "CloudTrailVpcChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "VpcEventCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an API call is made to create, update or delete a VPC, VPC peering connection or VPC connection to classic."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_EC2" {
  alarm_name                = "CloudTrailEC2InstanceChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "EC2InstanceEventCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an API call is made to create, terminate, start, stop or reboot an EC2 instance."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_EC2_LARGE" {
  alarm_name                = "CloudTrailEC2LargeInstanceChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "EC2LargeInstanceEventCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an API call is made to create, terminate, start, stop or reboot a 4x or 8x-large EC2 instance."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_CT" {
  alarm_name                = "CloudTrailChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "CloudTrailEventCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an API call is made to create, update or delete a CloudTrail trail, or to start or stop logging to a trail."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_CSF" {
  alarm_name                = "CloudTrailConsoleSignInFailures"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "ConsoleSignInFailureCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an unauthenticated API call is made to sign into the console."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_CSWMFA" {
  alarm_name                = "ConsoleSignInWithoutMFA"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "ConsoleSignInWithoutMFACount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an API call is made to sign into the console without MFA."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_AUTHF" {
  alarm_name                = "CloudTrailAuthorizationFailures"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "AuthorizationFailureCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an unauthorized API call is made."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_IAMPC" {
  alarm_name                = "CloudTrailIAMPolicyChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "IAMPolicyEventCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an API call is made to change an IAM policy."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_RTC" {
  alarm_name                = "CloudTrailRouteTableChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "RouteTableEventCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an API call is made to change a route table."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_RAU" {
  alarm_name                = "CloudTrailRootAccountUsage"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "RootAccountUsageCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when a Root account API call is made."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_ORGC" {
  alarm_name                = "CloudTrailOrganizationChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "OrganizationChangesCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an organization change API call is made."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_CMKC" {
  alarm_name                = "CloudTrailCMKChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "CMKChangesCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when a change to any CMKs are made."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_S3PC" {
  alarm_name                = "CloudTrailS3PolicyChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "S3PolicyChangeCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an API call is made to change S3 Policies."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

resource "aws_cloudwatch_metric_alarm" "tf-cloudtrail-events_CONFIGC" {
  alarm_name                = "CloudTrailConfigChanges"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "ConfigChangesCount"
  namespace                 = "CloudTrailMetrics"
  period                    = "300"
  statistic                 = "Sum"
  threshold                 = "1"
  alarm_description         = "Alarms when an API call is made to change the AWS Config."
  actions_enabled     = "true"
  alarm_actions       = [aws_sns_topic.tf-cloudtrail-events.arn]
}

