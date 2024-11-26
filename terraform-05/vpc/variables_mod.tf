
variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  default     = "b1gs93pelf036enaiodt"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
  default    = "b1g3ai68fnkbce7hpvgq"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
##-----------------------------------

variable "net_name" {
  type = string
  default = "rruuc"
}

variable "zone" {
  type = string
    default = "ru-central1-c"
}

variable "cidr" {
  type    = string
  default = "10.0.9.0/24"
}
#-----------------------------------


variable "platform" {
   type          = string
   default       = "standard-v1"
   description   = "Example to validate VM platform."
   validation {
     condition = contains(["standard-v1", "standard-v2", "standard-v3"], var.platform)
     error_message = "Invalid platform provided."
   }
}

variable "service_account_id" {
  type    = string
  default = null
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "instance_cores" {
  type    = number
  default = 2
}

variable "instance_memory" {
  type    = number
  default = 1
}

variable "instance_core_fraction" {
  type    = number
  default = 5
}

variable "boot_disk_type" {
  type    = string
  default = "network-hdd"
}

variable "boot_disk_size" {
  type    = number
  default = 10
}

variable "public_ip" {
  type    = bool
  default = false
}

variable "known_internal_ip" {
  default = ""
}

variable "image_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

variable "preemptible" {
  type = bool
  default = true
}

variable "metadata" {
  description = "for dynamic block 'metadata' "
  type        = map(string)
}

variable "security_group_ids" {
  type = list(string)
  default = []
}

variable "labels" {
  description = "for dynamic block 'labels' "
  type        = map(string)
  default = {}
}

variable "description" {
  type = string
  default = "TODO: description;"
}

