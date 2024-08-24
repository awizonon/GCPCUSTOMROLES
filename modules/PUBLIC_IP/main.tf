terraform {
  required_version = "1.8.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.0"
    }
  }
}

resource "google_compute_address" "ip_public" {
  name    = var.name
  region  = var.region
  project = var.project

  lifecycle {
    prevent_destroy = false
  }
}