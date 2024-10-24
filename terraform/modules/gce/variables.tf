variable "instance_name" {
  description = "The name of the GCE instance"
  type        = string
}

variable "zone" {
  description = "The zone to deploy GCE instance"
  type        = string
}

variable "subnetwork" {
  description = "Subnetwork to attach GCE instance"
  type        = string
}

variable "network_ip" {
  description = "Internal IP for GCE instance"
  type        = string
}

variable "tags" {
  description = "Network tags"
  type        = list(string)
}
