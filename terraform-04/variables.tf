

variable "net_name" {
  type = string
  default = "plov"
}

variable "zone" {
  type = string
    default = "ru-central1-a"
}

variable "cidr" {
  type    = string
  default = "10.0.3.0/24"
}

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

variable "vpc_name1" {
  type        = string
  default     = "develop" 
}

variable "vpc_name2" {
  type        = string
  default     = "stage"
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
}

variable "pub-ip" {
  type        = bool
  default     = true
}

variable "labels1" {
  type        = string
  default     = "marketing"
}

variable "labels2" {
  type        = string
  default     = "analitycs"
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

# ------- for cloudinit -------

variable "public_key" {
  type    = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKoBYtkaOTscrqxn5/GDjg2Q0rJ6wqRwyQ42aNseGYuL yan"
}

variable "username" {
  type    = string
  default = "ubuntu"
}

data "template_file" "cloudinit" {
  template = file("./cloud-init.yml")
  vars = {
    username           = var.username
    ssh_public_key     = var.public_key
  }
}