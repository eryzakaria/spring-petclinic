provider "google" {
  credentials = file("${path.module}/secrets/mythic-fire-439515-v0-e11e9d7da93c.json")
  project     = var.project_id
  region      = var.region
}
