output "workstation_instance_id" {
  description = "The server-assigned unique identifier of the workstation instance"
  value       = module.compute.instance_id
}

output "workstation_internal_ip" {
  description = "The internal IP address of the workstation instance"
  value       = module.compute.internal_ip
}

output "workstation_self_link" {
  description = "The URI of the created workstation resource"
  value       = module.compute.self_link
}