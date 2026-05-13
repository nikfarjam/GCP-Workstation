variable "vpc_cidr" {
  description = "The CIDR range for the VPC subnetwork"
  type        = string
}

variable "region" {
  description = "The region where the network resources will be created"
  type        = string
}
