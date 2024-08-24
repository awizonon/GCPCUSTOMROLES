output "vms_with_ip_pub" {
  value = google_compute_instance.vm.self_link
}