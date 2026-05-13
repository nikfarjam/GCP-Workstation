locals {
  common_tags = {
    environment = lower(var.environment)
    project     = "gcp-workstation"
    managed-by  = "terraform"
  }
}
