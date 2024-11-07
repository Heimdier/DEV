###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
}


# ------- Map variables -------
variable "metamaps" {
    type = map(object({
        serial = bool
        ssh = string
    }))
    default = {
        "meta" = {
            serial = true
            ssh = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKoBYtkaOTscrqxn5/GDjg2Q0rJ6wqRwyQ42aNseGYuL yan"
        }
    }
}
# ------- COUNT + Storage variables -------

variable "vms_resources" {
    type = map(object({
        core = number
        mem = number
        fract = number
        disk_v = number
        platform = string
        type = string
        nat = bool
    }))
    default = {
        "web" = {
            core = 2
            mem = 1
            fract = 20
            disk_v = 5
            platform = "standard-v1"
            type = "network-hdd"
            nat = true
        }
        "store" = {
            core = 2
            mem = 2
            fract = 5
            disk_v = 5
            platform = "standard-v1"
            type = "network-hdd"
            nat = true
        }
    }
}

# ------- HDD variables -------

variable "hdd_resources" {
    type = map(object({
        type = string
        size = number
        label = string
    }))
    default = {
        "hdd_3" = {
            type = "network-hdd"
            size = 5
            label = "storage"
        }
        "store" = {
            type = "network-hdd"
            size = 5
            label = "storage"
        }
    }
}

# ------- FOR-EACH variables -------

variable "each_vm" {
  type = list(object({ 
        name = string
        core = number
        mem  = number
        fract = number
        disk_v = number
        platform = string
        nat = bool
    }))
    default = [
        {
            name = "main"
            core = 2
            mem = 1
            fract = 20
            disk_v = 5
            platform = "standard-v1"
            nat = true
        },
        {
            name = "replica"
            core = 2
            mem = 2
            fract = 5
            disk_v = 5
            platform = "standard-v1"
            nat = true
        }
    ]
}



