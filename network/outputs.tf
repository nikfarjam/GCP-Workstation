output "subnet_id" {
  value       = google_compute_subnetwork.subnet.id
  description = "The unique identifier of the created subnet"
}
