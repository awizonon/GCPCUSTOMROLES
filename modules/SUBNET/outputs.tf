output "subnet_name" {
  value = google_compute_subnetwork.subnet.self_link #GET SUBNET NAME
}

output "ip_cidr_sub" {
  value = google_compute_subnetwork.subnet.ip_cidr_range #GET SUBNET IP RANGE
}