#создаем облачную сеть
resource "yandex_vpc_network" "fabric" {
  name = var.net_name
}

#создаем подсеть
resource "yandex_vpc_subnet" "fabric_a" {
  name           = "${var.net_name}-${var.zone}"
  zone		 = var.zone
  network_id     = yandex_vpc_network.fabric.id
  v4_cidr_blocks = [var.cidr]
}
