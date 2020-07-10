# The Provider block sets up the vSphere provider - How to connect to vCenter. Note the use of
# variables to avoid hardcoding credentials here

provider "vsphere" {
  user           = "${var.vsphere_user}"
  password       = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
  allow_unverified_ssl = true
}

# The Data sections are about determining where the virtual machine will be placed.
# Here we are naming the vSphere DC, the cluster, datastore, virtual network and the template
# name. These are called upon later when provisioning the VM resource

data "vsphere_datacenter" "dc" {
  name = "${var.vsphere_datacenter}"
}

data "vsphere_datastore" "datastore" {
  name          = "${var.vsphere_datastore}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_resource_pool" "pool" {
  name          = "Resources"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_network" "network" {
  name          = "${var.vsphere_network}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_host" "host" {
  name          = "${var.esxi_server_ip}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

# The Resource section creates the virtual machine, in this case
# from a template

resource "vsphere_virtual_machine" "WWIApp" {
  name = "WideWorldImportersApp"
  resource_pool_id = "${data.vsphere_resource_pool.pool.id}"
  datastore_id = "${data.vsphere_datastore.datastore.id}"
  host_system_id = "${data.vsphere_host.host.id}"
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout = 0
  datacenter_id = "${data.vsphere_datacenter.dc.id}"

  network_interface {
    network_id   = "${data.vsphere_network.network.id}"
  }
  
  network_interface {
        network_id = "${data.vsphere_network.network.id}"
    }
  
  ovf_deploy {
    local_ovf_path = "${var.ovf_path_for_app}"
    ovf_network_map = {
        "VM Network" = data.vsphere_network.network.id
    }
  }
  
  # vapp {
  #   properties = {
  #     "guestinfo.hostname" = "WIN-C2CTEST1",
  #     "guestinfo.ipaddress" = "192.168.1.14",
  #     "guestinfo.netmask" = "24",
  #     "guestinfo.gateway" = "192.168.1.1",
  #     "guestinfo.dns" = "8.8.8.8",
  #     # "guestinfo.password" = "VMwarye1!23",
  #     "guestinfo.subnet" = "255.255.255.0"
  #   }
  # }
}

resource "vsphere_virtual_machine" "WWIDB" {
  name = "WideWorldImportersDB"
  resource_pool_id = "${data.vsphere_resource_pool.pool.id}"
  datastore_id = "${data.vsphere_datastore.datastore.id}"
  host_system_id = "${data.vsphere_host.host.id}"
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout = 0
  datacenter_id = "${data.vsphere_datacenter.dc.id}"

  network_interface {
    network_id   = "${data.vsphere_network.network.id}"
  }
  
  network_interface {
        network_id = "${data.vsphere_network.network.id}"
    }
  
  ovf_deploy {
    local_ovf_path = "${var.ovf_path_for_db}"
    ovf_network_map = {
        "VM Network" = data.vsphere_network.network.id
    }
  }
  
  # vapp {
  #   properties = {
  #     "guestinfo.hostname" = "WIN-C2CTEST1",
  #     "guestinfo.ipaddress" = "192.168.1.14",
  #     "guestinfo.netmask" = "24",
  #     "guestinfo.gateway" = "192.168.1.1",
  #     "guestinfo.dns" = "8.8.8.8",
  #     # "guestinfo.password" = "VMwarye1!23",
  #     "guestinfo.subnet" = "255.255.255.0"
  #   }
  # }
}

resource "vsphere_virtual_machine" "WWILegacyDB" {
  name = "WideWorldImportersLegacyDB"
  resource_pool_id = "${data.vsphere_resource_pool.pool.id}"
  datastore_id = "${data.vsphere_datastore.datastore.id}"
  host_system_id = "${data.vsphere_host.host.id}"
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout = 0
  datacenter_id = "${data.vsphere_datacenter.dc.id}"

  network_interface {
    network_id   = "${data.vsphere_network.network.id}"
  }
  
  network_interface {
        network_id = "${data.vsphere_network.network.id}"
    }
  
  ovf_deploy {
    local_ovf_path = "${var.ovf_path_for_legacy_db}"
    ovf_network_map = {
        "VM Network" = data.vsphere_network.network.id
    }
  }
  
  # vapp {
  #   properties = {
  #     "guestinfo.hostname" = "WIN-C2CTEST1",
  #     "guestinfo.ipaddress" = "192.168.1.14",
  #     "guestinfo.netmask" = "24",
  #     "guestinfo.gateway" = "192.168.1.1",
  #     "guestinfo.dns" = "8.8.8.8",
  #     # "guestinfo.password" = "VMwarye1!23",
  #     "guestinfo.subnet" = "255.255.255.0"
  #   }
  # }
}