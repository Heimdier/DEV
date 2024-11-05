###cloud vars

variable "vm_db_vpc_name" {
  type        = string
  default     = "db"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
}

variable "vm_db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

## resource vars

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
}

variable "vm_db_platform" {
  type        = string
  default     = "standard-v1"
}

variable "vm_db_core" {
  type        = number
  default     = 2
}

variable "vm_db_memory" {
  type        = number
  default     = 2
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 20
}


