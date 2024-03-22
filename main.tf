// provider configuration
provider "aws" {
  region = var.region
}

module "rbac" {
  source = "./rbac"
  # You can pass variables to the RBAC module if needed
}

module "users" {
  source = "./users"
  # You can pass variables to the users module if needed
}