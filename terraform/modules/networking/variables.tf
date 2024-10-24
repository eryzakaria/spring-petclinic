variable "project_id" {
  description = "The project ID in GCP"
  type        = string
}

variable "network_name" {
  description = "The name of the network"
  type        = string
}

variable "region" {
  description = "The region where resources will be deployed"
  type        = string
  default     = "asia-southeast2"
}

variable "zone_a" {
  description = "Zone for subnet A"
  type        = string
  default     = "asia-southeast2-a"
}

variable "zone_b" {
  description = "Zone for subnet B"
  type        = string
  default     = "asia-southeast2-b"
}

variable "postgres_password" {
  description = "Password for PostgreSQL user"
  type        = string
}
