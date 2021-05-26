resource "aws_iam_user" "tf_tim" {
  name = "tim"

  tags = {
    full_name       = "Vishal"
    email           = "tim@beesolvertechnology.com"
    location        = "India"
    deployer        = "terraform"
  }
}


