variable "name" {
  type = string
}
variable "network" {
  type = string
}
variable "direction" {
  type = string
}
variable "source_range" {
  type = list(string)
}
variable "protocol" {
  type = string
}
variable "port" {
  type = list(string)
}
variable "icmp" {
  type = list()
}
variable "proxy" {
  type = bool
  default = false
}
variable "priority" {
  type = string
  default = "1000"
}
variable "log_config" {
  type = string
  default = "EXCLUDE_ALL_METADATA"
}