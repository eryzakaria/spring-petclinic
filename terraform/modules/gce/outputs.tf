output "instance_ip" {
  value = google_compute_instance.gce_instance.network_interface[0].network_ip
}
