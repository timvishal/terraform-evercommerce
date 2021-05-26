resource "aws_iam_group_policy_attachment" "tf_userselfmanagecredentials" {
  group      = aws_iam_group.tf_admins.name
  policy_arn = aws_iam_policy.tf_userselfmanagecredentials.arn
}

resource "aws_iam_group_policy_attachment" "tf_admins" {
group        = aws_iam_group.tf_admins.name
policy_arn   = "arn:aws:iam::aws:policy/AdministratorAccess"
}
