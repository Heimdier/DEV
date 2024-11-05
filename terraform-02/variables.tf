###cloud vars


variable "cloud_id" {
  type        = string
  default     = "b1gs93pelf036enaiodt"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1g3ai68fnkbce7hpvgq"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKoBYtkaOTscrqxn5/GDjg2Q0rJ6wqRwyQ42aNseGYuL yan"
  description = "ssh-keygen -t ed25519"
}

## resource vars
variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
}

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
}

variable "vm_web_platform" {
  type        = string
  default     = "standard-v1"
}

variable "vm_web_core" {
  type        = number
  default     = 2
}

variable "vm_web_memory" {
  type        = number
  default     = 2
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 20
}

# ------- Map variables -------
variable "vms_resources" {
    type = map(object({
        core = number
        memory = number
        fract = number
    }))
    default = {
        "web" = {
            core = 2
            memory = 2
            fract = 20
        }
        "db" = {
            core = 2
            memory = 2
            fract = 20
        }
    }
}


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
