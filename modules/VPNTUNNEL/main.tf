terraform {
  required_version = "1.8.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.0"
    }
  }
}

resource "google_compute_vpn_tunnel" "tunnel" {
  name                            = var.name
  project = var.project_id
  region = var.region
  target_vpn_gateway = var.target_vpn_gateway
  peer_ip = var.peer_ip
  shared_secret = var.shared_secret
  ike_version = var.ike_version
  #local_traffic_selector = var.local_traffic_selector
  #remote_traffic_selector = var.remote_traffic_selector
  labels = var.labels

  lifecycle {
    prevent_destroy = false
  }
}