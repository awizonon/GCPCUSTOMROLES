output "pub_ip_name" {
  value = google_compute_address.ip_public.address
}

output "pub_ip" {
  value = google_compute_address.ip_public.address
}