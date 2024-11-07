

resource "yandex_compute_instance" "web" {
  depends_on = [yandex_compute_instance.db]
  count = 2
  name        = "web-${count.index+1}" 
  hostname    = "web-${count.index+1}" 
  platform_id = var.vms_resources.web["platform"]

  resources {
    cores         = var.vms_resources.web["core"]
    memory        = var.vms_resources.web["mem"]
    core_fraction = var.vms_resources.web["fract"]
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      type     = var.vms_resources.web["type"]
      size     = var.vms_resources.web["disk_v"]
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
    nat       = var.vms_resources.web["nat"]
  }
}
