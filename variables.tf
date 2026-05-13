variable "project_id" {
  description = "The ID of the project where resources will be created"
  type        = string
}

variable "environment" {
  description = "Environment tag to apply to resources (e.g., dev, staging, prod)"
  type        = string
}

variable "billing_account_id" {
  description = "The ID of the billing account to associate with the project"
  type        = string
}

variable "region" {
  description = "The region where resources will be created"
  type        = string
  default     = "australia-southeast1"
}

variable "cloud_budget" {
  description = "The monthly budget limit for the project in USD"
  type        = number
  default     = 50
}

variable "credentials_file" {
  description = "Path to GCP service account key JSON file"
  type        = string
  default     = "~/.config/gcloud/application_default_credentials.json"
}

variable "vm_type" {
  description = "The machine type to use for the workstation VM"
  type        = string
}

variable "vm_image" {
  description = "The image to use for the workstation VM boot disk"
  type        = string
}

variable "vm_storage_size" {
  description = "The size of the boot disk in GB"
  type        = number
}

variable "vpc_cidr" {
  description = "The CIDR range for the workstation VPC"
  type        = string
}

variable "accelerator_count" {
  description = "The number of accelerators to attach to the VM"
  type        = number
  default     = 0
}

variable "zone" {
  description = "The zone where the VM will be created. If not provided, it defaults to {region}-a"
  type        = string
  default     = null
}
