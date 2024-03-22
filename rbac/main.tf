
// Define IAM policies that represent the permissions associated with each role
resource "aws_iam_policy" "admin_policy" {
  name        = "AdminAccessPolicy"
  description = "Grants full access to all resources"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect   = "Allow"
      Action   = "*"
      Resource = "*"
    }]
  })
}

// Define IAM roles in Terraform and attach the appropriate policies to them
resource "aws_iam_role" "admin_role" {
  name               = "AdminRole"
  assume_role_policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { "Service": "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    }]
  })

  tags = {
    Role = "Admin"
  }
}

resource "aws_iam_role_policy_attachment" "admin_policy_attachment" {
  role       = aws_iam_role.admin_role.name
  policy_arn = aws_iam_policy.admin_policy.arn
}

// Assign Users/Groups to Roles: Associate IAM roles with IAM users or groups.
resource "aws_iam_user" "example_user" {
  name = "example_user"
}

resource "aws_iam_user_policy_attachment" "admin_user_policy_attachment" {
  user       = aws_iam_user.example_user.name
  policy_arn = aws_iam_policy.admin_policy.arn
}

