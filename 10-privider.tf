terraform {
  required_providers {
    vsphere = {
      version = "2.1.1"
    }
  }
}

provider "vsphere" {
    user = "root"
    password = "123456"
    vsphere_server = "127.0.0.1"
    allow_unverified_ssl =true
}

