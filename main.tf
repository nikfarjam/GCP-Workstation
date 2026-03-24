module "finops" {
  source             = "./finops"
  billing_account_id = var.billing_account_id
  cloud_budget       = var.cloud_budget
}
