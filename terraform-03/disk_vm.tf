  
#
resource "yandex_compute_disk" "musket" {
  count = 3
  name     = "netology-hdd-${count.index+1}"
  type     = var.hdd_resources.hdd_3["type"]
  size     = var.hdd_resources.hdd_3["size"]
  zone     = var.default_zone
  image_id = data.yandex_compute_image.ubuntu.image_id

  labels = {
    environment = var.hdd_resources.hdd_3["label"]
  }
}

resource "yandex_compute_instance" "storage" {

  name        = "storage" 
  hostname    = "storage" 
  platform_id = var.vms_resources.store["platform"]

  resources {
    cores         = var.vms_resources.store["core"]
    memory        = var.vms_resources.store["mem"]
    core_fraction = var.vms_resources.store["fract"]
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      type     = var.vms_resources.store["type"]
      size     = var.vms_resources.store["disk_v"]
    }
  }

   dynamic "secondary_disk" {
    for_each = yandex_compute_disk.musket
    content {
      disk_id     =  lookup(secondary_disk.value, "id", null)
    }
  }

  metadata = {
    serial-port-enable = var.metamaps.meta["serial"]
    ssh-keys           = local.s_key
  }

  scheduling_policy { preemptible = true }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    security_group_ids = [ yandex_vpc_security_group.example.id ]
    nat       = var.vms_resources.store["nat"]
  }
}






