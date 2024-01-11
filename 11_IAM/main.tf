provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "myUser" {
  name = "AK"
}

resource "aws_iam_policy" "customPolicy" {
  name = "GlacierEFSEC2"
  policy = <<EOF

EOF
}

# How to bind policy to user
resource "aws_iam_policy_attachment" "policyBind" {
  name = "attachment"
#   we can attach one policy to multiple users
  users = [aws_iam_user.myUser.name]
  policy_arn = aws_iam_policy.customPolicy.arn
}