variable "project_id" {
  type = string
}
variable "billing_account_id" {
  type = string
}
variable "region" {
  type    = string
  default = "australia-southeast1"
}
variable "cloud_budget" {
  type    = number
  default = 50
}
variable "credentials_file" {
  type        = string
  description = "Path to GCP service account key JSON file"
  default     = "~/.config/gcloud/application_default_credentials.json"
}
variable "vm_type" {
  type = string
}
variable "vm_image" {
  type = string
}
variable "vm_storage_size" {
  type = number
}
variable "vpc_cidr" {
  type = string
}