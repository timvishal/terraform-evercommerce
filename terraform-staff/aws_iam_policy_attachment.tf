resource "aws_iam_policy_attachment" "tf_admins" {
  name       = "tf_admins"
  groups     = [aws_iam_group.tf_admins.name]
  policy_arn = aws_iam_policy.tf_userselfmanagecredentials.arn
}
