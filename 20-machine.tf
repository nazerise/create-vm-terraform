resource "vsphere_virtual_machine" "vm" {
     name             = var.vm_name
     resource_pool_id = data.vsphere_resource_pool.pool.id
     datastore_id     = data.vsphere_datastore.datastore.id
     
     num_cpus = var.num_cpus
     cpu_hot_add_enabled  = true
     memory_hot_add_enabled = true
     memory   = var.memory
     guest_id = var.guest_id

     network_interface {
        network_id = data.vsphere_network.network.id
     }
     cdrom {
        datastore_id = data.vsphere_datastore.iso_datastore.id
        path         = var.iso_path
     }

     wait_for_guest_net_timeout = 0
     wait_for_guest_ip_timeout  = 0

     disk {
       label = var.disk.label
       size  = var.disk.size
     }

     scsi_type = "lsilogic-sas"
}
