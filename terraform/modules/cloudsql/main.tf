resource "google_sql_database_instance" "postgres_instance" {
  name             = "cloudsql-postgresql-instance"
  database_version = "POSTGRES_13"
  region           = var.region
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled    = false
      private_network = var.network
    }
    availability_type = "REGIONAL"
    backup_configuration {
      enabled = true
    }
  }
}

resource "google_sql_database" "default_db" {
  name     = "my_database"
  instance = google_sql_database_instance.postgres_instance.name
}

resource "google_sql_user" "users" {
  name     = "postgres_user"
  instance = google_sql_database_instance.postgres_instance.name
  password = var.postgres_password
}
