terraform {
  required_version = "1.8.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.0"
    }
  }
}
################### ROUTER #########################
resource "google_compute_router" "router" {
  name    = var.name
  region  = var.region
  project = var.project
  network = var.network
  bgp {
    asn = 64514
  }

  lifecycle {
    prevent_destroy = false
  }
}