

locals {
  vpc_wbn = "netology-${ var.default_zone }-${ var.vpc_name }"
  vpc_dbn = "netology-${ var.vm_db_zone }-${ var.vm_db_vpc_name }"
}


