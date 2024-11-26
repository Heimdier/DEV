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

/*
resource "yandex_vpc_subnet" "lab-subnet-a" {
  name           = "<subnet_name>"
  description    = "<subnet_description>"
  v4_cidr_blocks = ["<IPv4_address>"]
  zone           = "<availability_zone>"
  network_id     = "<network_ID>"
}
*/
