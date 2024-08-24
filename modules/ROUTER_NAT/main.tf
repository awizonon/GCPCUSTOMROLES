terraform {
  required_version = "1.8.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.0"
    }
  }
}
################### ROUTER NAT #########################
resource "google_compute_router_nat" "nat_manual" {
  name   = var.name
  router = var.router_name
  region = var.router_region

  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips                = var.public_ip_names

  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }

  lifecycle {
    prevent_destroy = false
  }
}