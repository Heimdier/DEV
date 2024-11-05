
output "db_ip_addr" {
  value = "${yandex_compute_instance.platform-db.network_interface.0.nat_ip_address}"
}

output "db_name" {
  value = "${yandex_compute_instance.platform-db.name}"
}

output "db_fqdn" {
  value = "${yandex_compute_instance.platform-db.fqdn}"
}

output "main_ip_addr" {
  value = "${yandex_compute_instance.platform.network_interface.0.nat_ip_address}"
}

output "main_name" {
  value = "${yandex_compute_instance.platform.name}"
}

output "main_fqdn" {
  value = "${yandex_compute_instance.platform.fqdn}"
}

