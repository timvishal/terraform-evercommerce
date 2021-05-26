resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_SG" {
  name           = "SecurityGroupChangesMetricFilter"
  pattern        = "{ ($.eventName = AuthorizeSecurityGroupIngress) || ($.eventName = AuthorizeSecurityGroupEgress) || ($.eventName = RevokeSecurityGroupIngress) || ($.eventName = RevokeSecurityGroupEgress) || ($.eventName = CreateSecurityGroup) || ($.eventName = DeleteSecurityGroup) }"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "SecurityGroupEventCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_NACL" {
  name           = "NetworkAclChangesMetricFilter"
  pattern        = "{ ($.eventName = CreateNetworkAcl) || ($.eventName = CreateNetworkAclEntry) || ($.eventName = DeleteNetworkAcl) || ($.eventName = DeleteNetworkAclEntry) || ($.eventName = ReplaceNetworkAclEntry) || ($.eventName = ReplaceNetworkAclAssociation) }"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "NetworkAclEventCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_GATEWAY" {
  name           = "GatewayChangesMetricFilter"
  pattern        = "{ ($.eventName = CreateCustomerGateway) || ($.eventName = DeleteCustomerGateway) || ($.eventName = AttachInternetGateway) || ($.eventName = CreateInternetGateway) || ($.eventName = DeleteInternetGateway) || ($.eventName = DetachInternetGateway) }"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "GatewayEventCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_VPC" {
  name           = "VpcChangesMetricFilter"
  pattern        = "{ ($.eventName = CreateVpc) || ($.eventName = DeleteVpc) || ($.eventName = ModifyVpcAttribute) || ($.eventName = AcceptVpcPeeringConnection) || ($.eventName = CreateVpcPeeringConnection) || ($.eventName = DeleteVpcPeeringConnection) || ($.eventName = RejectVpcPeeringConnection) || ($.eventName = AttachClassicLinkVpc) || ($.eventName = DetachClassicLinkVpc) || ($.eventName = DisableVpcClassicLink) || ($.eventName = EnableVpcClassicLink) }"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "VpcEventCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_EC2" {
  name           = "EC2InstanceChangesMetricFilter"
  pattern        = "{ ($.eventName = RunInstances) || ($.eventName = RebootInstances) || ($.eventName = StartInstances) || ($.eventName = StopInstances) || ($.eventName = TerminateInstances) }"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "EC2InstanceEventCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_EC2_LARGE" {
  name           = "EC2LargeInstanceChangesMetricFilter"
  pattern        = "{ ($.eventName = RunInstances) && (($.requestParameters.instanceType = *.8xlarge) || ($.requestParameters.instanceType = *.4xlarge)) }"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "EC2LargeInstanceEventCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_CT" {
  name           = "CloudTrailChangesMetricFilter"
  pattern        = "{ ($.eventName = CreateTrail) || ($.eventName = UpdateTrail) || ($.eventName = DeleteTrail) || ($.eventName = StartLogging) || ($.eventName = StopLogging) }"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "CloudTrailEventCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_CSF" {
  name           = "ConsoleSignInFailuresMetricFilter"
  pattern        = "{ ($.eventName = ConsoleLogin) && ($.errorMessage = \"Failed authentication\") }"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "ConsoleSignInFailureCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_CSWMFA" {
  name           = "ConsoleSignInWithoutMFAMetricFilter"
  pattern        = "{ ($.eventName = ConsoleLogin) && ($.additionalEventData.MFAUsed = No) && ($.userIdentity.type != AssumedRole) }"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "ConsoleSignInWithoutMFACount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_AUTHF" {
  name           = "AuthorizationFailuresMetricFilter"
  pattern        = "{ ($.errorCode = \"*UnauthorizedOperation\") || ($.errorCode = \"AccessDenied*\") }"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "AuthorizationFailureCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_IAMPC" {
  name           = "IAMPolicyChangesMetricFilter"
  pattern        = "{($.eventName=DeleteGroupPolicy)||($.eventName=DeleteRolePolicy)||($.eventName=DeleteUserPolicy)||($.eventName=PutGroupPolicy)||($.eventName=PutRolePolicy)||($.eventName=PutUserPolicy)||($.eventName=CreatePolicy)||($.eventName=DeletePolicy)||($.eventName=CreatePolicyVersion)||($.eventName=DeletePolicyVersion)||($.eventName=AttachRolePolicy)||($.eventName=DetachRolePolicy)||($.eventName=AttachUserPolicy)||($.eventName=DetachUserPolicy)||($.eventName=AttachGroupPolicy)||($.eventName=DetachGroupPolicy)}"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "IAMPolicyEventCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_RTC" {
  name           = "RouteTableChangesMetricFilter"
  pattern        = "{($.eventName=CreateRoute) || ($.eventName=CreateRouteTable) || ($.eventName=ReplaceRoute) || ($.eventName=ReplaceRouteTableAssociation) || ($.eventName=DeleteRouteTable) || ($.eventName=DeleteRoute) || ($.eventName=DisassociateRouteTable)}"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "RouteTableEventCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_RAU" {
  name           = "RootAccountUsageMetricFilter"
  pattern        = "{ ($.userIdentity.type=Root) && ($.userIdentity.invokedBy NOT EXISTS && $.eventType !=AwsServiceEvent) }"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "RootAccountUsageCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_OC" {
  name           = "OrganizationChangesMetricFilter"
  pattern        = "{ ($.eventSource = organizations.amazonaws.com) && (($.eventName = AcceptHandshake) || ($.eventName = AttachPolicy) || ($.eventName = CreateAccount) || ($.eventName = CreateOrganizationalUnit) || ($.eventName = CreatePolicy) || ($.eventName = DeclineHandshake) || ($.eventName = DeleteOrganization) || ($.eventName = DeleteOrganizationalUnit) || ($.eventName = DeletePolicy) || ($.eventName = DetachPolicy) || ($.eventName = DisablePolicyType) || ($.eventName = EnablePolicyType) || ($.eventName = InviteAccountToOrganization) || ($.eventName = LeaveOrganization) || ($.eventName = MoveAccount) || ($.eventName = RemoveAccountFromOrganization) || ($.eventName = UpdatePolicy) || ($.eventName = UpdateOrganizationalUnit)) }"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "OrganizationChangesCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_CMKC" {
  name           = "CMKChangesMetricFilter"
  pattern        = "{($.eventSource=kms.amazonaws.com) && (($.eventName=DisableKey) || ($.eventName=ScheduleKeyDeletion))}"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "CMKChangesCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_S3PC" {
  name           = "S3PolicyChangesMetricFilter"
  pattern        = "{($.eventSource=s3.amazonaws.com) && (($.eventName=PutBucketAcl) || ($.eventName=PutBucketPolicy) || ($.eventName=PutBucketCors) || ($.eventName=PutBucketLifecycle) || ($.eventName=PutBucketReplication) || ($.eventName=DeleteBucketPolicy) || ($.eventName=DeleteBucketCors) || ($.eventName=DeleteBucketLifecycle) || ($.eventName=DeleteBucketReplication))}"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "S3PolicyChangeCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "tf-cloudtrail-events_CONFIGC" {
  name           = "ConfigChangesMetricFilter"
  pattern        = "{($.eventSource=config.amazonaws.com) && (($.eventName=StopConfigurationRecorder) || ($.eventName=DeleteDeliveryChannel) || ($.eventName=PutDeliveryChannel) || ($.eventName=PutConfigurationRecorder))}"
  log_group_name = aws_cloudwatch_log_group.tf-cloudtrail-events.name

  metric_transformation {
    name      = "ConfigChangesCount"
    namespace = "CloudTrailMetrics"
    value     = "1"
  }
}


