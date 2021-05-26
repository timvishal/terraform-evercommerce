resource "aws_iam_policy" "tf_userselfmanagecredentials" {
  name        = "tf_userselfmanagecredentials"
  description = "Enable users to self-manage their own MFA devices and credentials"
  policy      = file("${path.module}/iam_policies/tf_force_mfa.json")
}

