output "service_instance_ip" {
  value = module.service_instance.instance_ip
}

output "monitoring_instance_ip" {
  value = module.monitoring_instance.instance_ip
}

output "cloudsql_postgresql_instance" {
  value = module.cloudsql.cloudsql_instance_connection_name
}
