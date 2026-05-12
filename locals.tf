locals {
  common_tags = {
    Environment = var.environment
    Project     = "gcp-workstation"
    ManagedBy   = "Terraform"
  }
}