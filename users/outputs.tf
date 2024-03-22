// his file can contain output definitions if you need to output any information from the users or groups module.
output "user_arn" {
  value = aws_iam_user.example_user.arn
}

output "group_arn" {
  value = aws_iam_group.example_group.arn
}

# Define other outputs as needed
