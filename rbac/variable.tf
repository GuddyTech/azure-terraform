// This file can contain variable definitions for RBAC configurations, allowing for easier parameterization.
variable "region" {
  type    = string
  default = "us-west-2"
}

variable "admin_policy_name" {
  type    = string
  default = "AdminAccessPolicy"
}

# Define other variables as needed
