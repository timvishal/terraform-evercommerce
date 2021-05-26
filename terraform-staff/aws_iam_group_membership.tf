resource "aws_iam_group_membership" "tf_admins" {
  name  = "tf_admins"
  group = aws_iam_group.tf_admins.name
  users = [
    aws_iam_user.tf_tim.name
  ]
}
