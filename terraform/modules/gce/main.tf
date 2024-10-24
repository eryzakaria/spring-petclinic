resource "google_compute_instance" "gce_instance" {
  name         = var.instance_name
  machine_type = "e2-medium"
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    subnetwork = var.subnetwork
    network_ip = var.network_ip
  }
  tags = var.tags
}
