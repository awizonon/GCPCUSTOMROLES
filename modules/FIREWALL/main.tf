terraform {
  required_version = "1.8.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.0"
    }
  }
}
resource "google_compute_firewall" "firewall" {
  name          = var.name
  network       = var.network
  priority      = var.priority
  direction     = var.direction
  source_ranges = var.source_range

  log_config {
    metadata = var.log_config
  }

  allow {
    protocol = var.protocol
    ports    = var.port
  }

  allow {
    protocol = var.icmp == 1 ? "icmp" : ""
  }

  target_tags = var.proxy == true ? [] : [var.name]

  lifecycle {
    prevent_destroy = false
  }
}