resource "google_service_account" "workstation_sa" {
  account_id = "workstation-sa"
}

resource "google_compute_instance" "workstation_vm" {
  name         = "workstation-vm"
  machine_type = var.vm_type
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = var.vm_image
      size  = var.vm_storage_size
      type  = "pd-balanced"
    }
  }

  guest_accelerator {
    type  = "nvidia-l4"
    count = var.accelerator_count
  }

  scheduling {
    preemptible                 = true
    provisioning_model          = "SPOT"
    automatic_restart           = false
    instance_termination_action = "STOP"
  }

  network_interface {
    subnetwork = var.subnet_id
  }

  service_account {
    email  = google_service_account.workstation_sa.email
    scopes = ["cloud-platform"]
  }

  labels = {
    environment = "dev"
  }
}
