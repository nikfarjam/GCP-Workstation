output "instance_id" {
  description = "The server-assigned unique identifier of this instance"
  value       = google_compute_instance.workstation_vm.instance_id
}

output "internal_ip" {
  description = "The internal IP address of the instance"
  value       = google_compute_instance.workstation_vm.network_interface[0].network_ip
}

output "self_link" {
  description = "The URI of the created resource"
  value       = google_compute_instance.workstation_vm.self_link
}
