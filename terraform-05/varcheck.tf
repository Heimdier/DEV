variable "ip1" {
  type = string
  description = "ip-адрес"
  default     = "192.1680.0.1"
  validation  {
#    condition     = can(cidrnetmask(var.source_address))
#    condition = can(regex("^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$", var.ip1))
    condition = can(regex("^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$",var.ip1))
    error_message   = "косяк с ip адресом, будь добр исправь"
  }
}

variable "ips" {
  type = list(string)
  description = "список ip-адресов"
#  default = ["192.168.0.1", "1.1.1.1", "127.0.0.1"] 
  default = ["192.168.0.1", "1.1.1.1", "1270.0.0.1"]
  validation {
    condition = can([for ip in var.ips: regex("^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", ip)])
    #condition = alltrue([
    #  for ip in var.ips : can(regex("^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$", ip))
   # ])
    error_message   = "что то пошло не так"
  }
}
