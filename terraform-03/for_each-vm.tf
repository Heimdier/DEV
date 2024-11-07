


resource "yandex_compute_instance" "db" {
  for_each = { for inst in var.each_vm : inst.name => inst }
  platform_id = each.value.platform
  name        = each.value.name
  hostname    = each.value.name

  resources {
    cores         = each.value.core
    memory        = each.value.mem
    core_fraction = each.value.fract
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
       size     = each.value.disk_v
    }
  }
  metadata = {
    serial-port-enable = var.metamaps.meta["serial"]
    ssh-keys           = local.s_key
  }

  scheduling_policy { preemptible = true }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = each.value.nat
  }
}
