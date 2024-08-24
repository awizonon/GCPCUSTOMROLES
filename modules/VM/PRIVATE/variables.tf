variable "zone" {
  type = string
}
variable "name" {
  type = string
}
variable "ip_private" {
  type = string
}
variable "vm_os" {
  type    = string
  default = "debian-cloud/debian-10"
}
variable "vm_type_disk" {
  type    = string
  default = "pd-ssd"
}
variable "machine_type" {
  type = string
}
variable "can_ip_forward" {
  type    = bool
  default = false
}
variable "allow_stopping_for_update" {
  type    = bool
  default = true
}
variable "automatic_restart" {
  type    = bool
  default = true
}
variable "tags" {
  type    = list(string)
  default = []
}
variable "subnet" {
  type = string
}
variable "network" {
  type = string
}
variable "sskeys" {
  type = string
}