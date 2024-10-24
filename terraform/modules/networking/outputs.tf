output "network_id" {
  value = google_compute_network.vpc_network.id
}

output "subnet_zone_a" {
  value = google_compute_subnetwork.subnet_zone_a.id
}

output "subnet_zone_b" {
  value = google_compute_subnetwork.subnet_zone_b.id
}
