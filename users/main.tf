// This file can contain IAM user or group definitions and their attachments to roles or policies.
resource "aws_iam_user" "example_user" {
  name = "example_user"
}

resource "aws_iam_group" "example_group" {
  name = "example_group"
}

resource "aws_iam_group_membership" "example_group_membership" {
  name = "example_group_membership"
  users = [aws_iam_user.example_user.name]
  group = aws_iam_group.example_group.name
}

# You can also attach policies directly to users or groups if needed
