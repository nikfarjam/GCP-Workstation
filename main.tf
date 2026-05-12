# FinOps module manages billing budgets and cost monitoring
module "finops" {
  source             = "./finops"
  billing_account_id = var.billing_account_id
  cloud_budget       = var.cloud_budget
}

# Network module manages VPC, subnets, firewalls, and NAT
module "network" {
  source   = "./network"
  region   = var.region
  vpc_cidr = var.vpc_cidr
}

# Compute module manages VM instances and service accounts
module "compute" {
  source            = "./compute"
  region            = var.region
  subnet_id         = module.network.subnet_id
  vm_type           = var.vm_type
  vm_image          = var.vm_image
  vm_storage_size   = var.vm_storage_size
  accelerator_count = var.accelerator_count
  zone              = var.zone
  common_tags       = local.common_tags
}
