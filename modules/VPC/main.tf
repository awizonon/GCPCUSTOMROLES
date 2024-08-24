terraform {
  required_version = "1.8.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.0"
    }
  }
}

resource "google_compute_network" "vpc" {
  name                            = var.name
  auto_create_subnetworks         = var.auto_create_subnetworks
  routing_mode                    = var.routingmode
  delete_default_routes_on_create = var.delete_default_routes_on_create

  lifecycle {
    prevent_destroy = false
  }
}