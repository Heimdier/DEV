resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}


#resource "yandex_vpc_network" "db" {
#  name = var.vm_db_vpc_name
#}
resource "yandex_vpc_subnet" "db" {
  name           = var.vm_db_vpc_name
  zone           = var.vm_db_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.vm_db_cidr
}


data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_family
}
resource "yandex_compute_instance" "platform" {
#  name        = var.vm_web_name
  name        = local.vpc_wbn
  platform_id = var.vm_web_platform
  hostname    = var.vm_web_name
/*  resources {
    cores         = var.vm_web_core
    memory        = var.vm_web_memory
    core_fraction = var.vm_web_core_fraction
  }
  */
   resources {
    cores         = var.vms_resources.db["core"]
    memory        = var.vms_resources.db["memory"]
    core_fraction = var.vms_resources.db["fract"]
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

/*  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  }
*/
    metadata = {
    serial-port-enable = var.metamaps.meta["serial"]
    ssh-keys           = var.metamaps.meta["ssh"]
  }

}

# ----- second VM -----------------
resource "yandex_compute_instance" "platform-db" {
  #name        = var.vm_db_name
  name        = local.vpc_dbn
  platform_id = var.vm_db_platform
  zone        = var.vm_db_zone
  hostname    = var.vm_db_name
/*  resources {
    cores         = var.vm_db_core
    memory        = var.vm_db_memory
    core_fraction = var.vm_db_core_fraction
  }*/
  
  resources {
    cores         = var.vms_resources.web["core"]
    memory        = var.vms_resources.web["memory"]
    core_fraction = var.vms_resources.web["fract"]
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.db.id
    nat       = true
  }

    metadata = {
    serial-port-enable = var.metamaps.meta["serial"]
    ssh-keys           = var.metamaps.meta["ssh"]
  }

}
