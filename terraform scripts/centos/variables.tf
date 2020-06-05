variable "vsphere_server" {
  type    = "string"
}
variable "vsphere_username" {
  type    = "string"
}
variable "vsphere_password" {
  type    = "string"
}
variable "allow_ssl" {
  default = true
}

variable "vsphere_datacenter" {
  type    = "string"
}
variable "vsphere_datastore" {
  type    = "string"
}
variable "vsphere_resource_pool" {
  type    = "string"
}
variable "vsphere_network" {
  type    = "string"
}
variable "vsphere_template" {
  type    = "string"
}
variable "vm_name" {
  type    = "string"
}

variable "cpus" {
  type    = number
  default = 4
}

variable "memory_in_mb" {
  type    = number
  default = 4096
}

variable "disk_size" {
  type    = "string"
  default = "45"
}

variable "admin_password" {
  type    = "string"
}

variable "domain_name" {
  type    = "string"
}

variable "ipv4_address" {
  type    = "string"
}

variable "ipv4_netmask" {
  type    = "string"
}
variable "dns_server_list" {
  type    = "list"
}
variable "dns_suffix_list" {
  type    = "list"
}
variable "ipv4_gateway" {
  type    = "string"
}
variable "user_name" {
  type    = "string"
}