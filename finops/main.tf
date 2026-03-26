resource "google_billing_budget" "budget" {
  billing_account = var.billing_account_id
  display_name    = "AI-Workspace-Budget"
  amount {
    specified_amount {
      currency_code = "USD"
      units         = var.cloud_budget
    }
  }
  threshold_rules { threshold_percent = 0.5 }
  threshold_rules { threshold_percent = 0.9 }
}