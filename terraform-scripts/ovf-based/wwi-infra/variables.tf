variable "vsphere_server" {
    description = "vsphere server for the environment - EXAMPLE: vcenter01.hosted.local"
}
variable "vsphere_user" {
    description = "vsphere user for the environment - EXAMPLE: vsphereuser"
}
variable "vsphere_password" {
    description = "vsphere server password for the environment"
}
variable "vsphere_datacenter" {
    description = "name of the datacenter on which you want to create the VMs"
}
variable "vsphere_datastore" {
    description = "name of the datastore on which you want to create the VMs"
}
variable "vsphere_network" {
    description = "vsphere network to assign to the VMs"
}
variable "esxi_server_ip" {
    description = "IP of your ESXi Server on which you want to create the VMs"
}
variable "ovf_path_for_app" {
    description = "Path of OVF file for App VM creation"
}
variable "ovf_path_for_db" {
    description = "Path of OVF file for Database VM creation"
}
variable "ovf_path_for_legacy_db" {
    description = "Path of OVF file for Legacy Database VM creation"
}