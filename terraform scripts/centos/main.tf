provider "vsphere" {
  user           = "${var.vsphere_username}"
  password       = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"

  # If you have a self-signed cert
  allow_unverified_ssl = "${var.allow_ssl}"
}

data "vsphere_datacenter" "dc" {
  name = "${var.vsphere_datacenter}"
}

data "vsphere_datastore" "datastore" {
  name          = "${var.vsphere_datastore}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_resource_pool" "pool" {
  name          = "${var.vsphere_resource_pool}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_network" "network" {
  name          = "${var.vsphere_network}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_virtual_machine" "template" {
#   name          = "Template-C/entos7"
  name = "${var.vsphere_template}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

resource "vsphere_virtual_machine" "vm" {
  name             = "${var.vm_name}"
  resource_pool_id = "${data.vsphere_resource_pool.pool.id}"
  datastore_id     = "${data.vsphere_datastore.datastore.id}"

  num_cpus = "${var.cpus}"
  memory   = "${var.memory_in_mb}"
  guest_id = "${data.vsphere_virtual_machine.template.guest_id}"

  network_interface {
    network_id = "${data.vsphere_network.network.id}"
  }

  disk {
    label = "disk0"
    size  = "${var.disk_size}"
    eagerly_scrub    = "${data.vsphere_virtual_machine.template.disks.0.eagerly_scrub}"
    thin_provisioned = "${data.vsphere_virtual_machine.template.disks.0.thin_provisioned}"
  }

  #Included a clone attribute in the resource
  clone {
    template_uuid = "${data.vsphere_virtual_machine.template.id}"

    customize {
      linux_options{
        host_name = "centos"
        domain = "${var.domain_name}"
      }
      network_interface {
        ipv4_address = "${var.ipv4_address}"
        ipv4_netmask = "${var.ipv4_netmask}"
      }
      dns_server_list = "${var.dns_server_list}"
      dns_suffix_list = "${var.dns_suffix_list}"
      ipv4_gateway    = "${var.ipv4_gateway}"
    }
  }

  connection {
    type = "ssh"
    host = "${var.ipv4_address}"
    user = "${var.user_name}"
    password = "${var.admin_password}"
    port = "22"
    agent = false
  }

   provisioner "file" {
    source      = "mysql.sh"
    destination = "/tmp/mysql.sh"
    }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/mysql.sh",
      "/tmp/mysql.sh",
    ]
  }
}