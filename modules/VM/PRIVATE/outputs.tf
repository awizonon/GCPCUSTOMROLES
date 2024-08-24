output "vms_without_ip_pub" {
  value = google_compute_instance.vm.self_link
}
output "vm_name" {
  value = google_compute_instance.vm.name
}