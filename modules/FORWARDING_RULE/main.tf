terraform {
  required_version = "1.8.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.0"
    }
  }
}

resource "google_compute_forwarding_rule" "forwarding" {
  name                            = var.name
  project                         = var.project_id
  region                          = var.region
  load_balancing_scheme = var.load_balancing_scheme
  target = var.target
  port_range = var.ip_protocol == "ESP" ? "" : var.port_range
  # network = var.network
  # subnetwork = var.subnetwork
  ip_address = var.address
  ip_protocol = var.ip_protocol
  backend_service = var.backend_service
  labels = var.labels

  lifecycle {
    prevent_destroy = false
  }
}