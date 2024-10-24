provider "google" {
  project = var.project_id
  region  = var.region
}

# Call GCE module for service instance
module "service_instance" {
  source       = "./modules/gce"
  instance_name = "service-instance"
  zone         = var.zone_a
  subnetwork   = module.networking.subnet_zone_a
  network_ip   = "10.0.1.1"
  tags         = ["service"]
}

# Call GCE module for monitoring instance
module "monitoring_instance" {
  source       = "./modules/gce"
  instance_name = "monitoring-instance"
  zone         = var.zone_b
  subnetwork   = module.networking.subnet_zone_b
  network_ip   = "10.0.2.2"
  tags         = ["monitoring"]
}

# Call CloudSQL module for PostgreSQL
module "cloudsql" {
  source           = "./modules/cloudsql"
  region           = var.region
  network          = module.networking.network_id
  postgres_password = var.postgres_password
}
