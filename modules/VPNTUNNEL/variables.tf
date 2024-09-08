variable "name" {
  type = string
}
variable "project_id" {
  type = string
}
variable "region" {
  type = string
}
variable "target_vpn_gateway" {
  type = string
}
variable "peer_ip" {
  type = string
}
variable "shared_secret" {
  type = string
  sensitive = true
}
variable "ike_version" {
  type = string
}
variable "local_traffic_selector" {
  type = string
}
variable "remote_traffic_selector" {
  type = string
}
variable "labels" {
  type = string
}