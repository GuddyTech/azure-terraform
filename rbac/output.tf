// his file can contain output definitions if you need to output any information from the RBAC module
output "admin_role_arn" {
  value = aws_iam_role.admin_role.arn
}

# Define other outputs as needed
