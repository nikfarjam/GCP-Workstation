variable "region" {
  type = string
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
variable "accelerator_count" {
  default = 0
}
variable "subnet_id" {
  type = string
}
