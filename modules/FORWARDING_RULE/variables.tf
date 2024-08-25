variable "name" {
  type = string
}
variable "project_id" {
  type = string
}
variable "ip_protocol" {
  type = string
}
variable "target" {
  type = string
}
variable "region" {
  type = string
}
variable "address" {
  type = string
}
variable "load_balancing_scheme" {
  type = string
  default = "EXTERNAL"
}
variable "port_range" {
  type = string
}
variable "network" {
  type = string
}
variable "subnetwork" {
  type = string
}
variable "backend_service" {
  type = string
}
variable "labels" {
  type = list()
}