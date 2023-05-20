data "vsphere_datacenter" "dc" {
  name = "dc1"
}

data "vsphere_datastore" "iso_datastore" {
  name = "Disk3"
  datacenter_id = data.vsphere_datacenter.dc.id
}
 
data "vsphere_datastore" "datastore" {
  name = "Disk4"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_resource_pool" "pool" {
  name = "cluster1/Resources"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name = "Vlan name"
  datacenter_id = data.vsphere_datacenter.dc.id
}

