variable "region" {
  description = "The region where the VM will be created"
  type        = string
}

variable "vm_type" {
  description = "The machine type to use for the VM"
  type        = string
}

variable "vm_image" {
  description = "The image to use for the VM boot disk"
  type        = string
}

variable "vm_storage_size" {
  description = "The size of the boot disk in GB"
  type        = number
}

variable "accelerator_count" {
  description = "The number of accelerators to attach to the VM"
  type        = number
  default     = 0
}

variable "subnet_id" {
  description = "The ID of the subnet to attach the VM to"
  type        = string
}

variable "zone" {
  description = "The zone where the VM will be created. If not provided, it defaults to {region}-a"
  type        = string
  default     = null
}
