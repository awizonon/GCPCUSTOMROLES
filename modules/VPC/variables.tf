variable "name" {
  type = string
}
variable "routingmode" {
  type    = string
  default = "REGIONAL"
}
variable "auto_create_subnetworks" {
  type    = bool
  default = false
}
variable "delete_default_routes_on_create" {
  type    = bool
  default = false
}