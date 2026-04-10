variable "billing_account_id" {
  description = "The ID of the billing account"
  type        = string
}

variable "cloud_budget" {
  description = "The monthly budget amount"
  type        = number
  default     = 50
}
