variable "vm_name" {
  type = string
  default = "test"
}

variable "num_cpus" {
  type = number
  default = 4
}

variable "memory" {
  type = number
  default = 4096
}

variable "guest_id" {
  type = string
  default = "otherLinux64Guest"
}

variable "disk" {
  type    = object({
    size  = number
    label = string
  })
  default = {
    size  = 100
    label = "disk1"
  }
}

variable "iso_path" {
  default = "OS/Rocky-9.1-x86_64-dvd.iso"
}
