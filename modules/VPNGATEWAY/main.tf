terraform {
  required_version = "1.8.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.0"
    }
  }
}

resource "google_compute_vpn_gateway" "vpn_gateway" {
  name                            = var.name
  network = var.network
  region = var.region

  lifecycle {
    prevent_destroy = false
  }
}