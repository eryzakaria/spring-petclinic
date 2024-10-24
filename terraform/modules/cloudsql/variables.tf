variable "region" {
  description = "Region where Cloud SQL instance will be deployed"
  type        = string
}

variable "network" {
  description = "VPC network for private IP access"
  type        = string
}

variable "postgres_password" {
  description = "Password for PostgreSQL user"
  type        = string
}
