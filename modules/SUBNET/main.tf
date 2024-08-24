terraform {
  required_version = "1.8.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.0"
    }
  }
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.name
  ip_cidr_range = var.subnet
  network       = var.network
  region        = var.region

  lifecycle {
    prevent_destroy = false
  }
}