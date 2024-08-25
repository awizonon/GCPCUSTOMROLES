terraform {
  required_version = "1.8.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.0"
    }
  }
}

resource "google_compute_route" "route" {
  name                            = var.name
  project = var.project_id
  network = var.network
  dest_range = var.dest_range
  next_hop_vpn_tunnel  = var.next_hop_vpn_tunnel

  lifecycle {
    prevent_destroy = false
  }
}