 
resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/hosts.tftpl",
    {
    webservers = yandex_compute_instance.web,
    database = yandex_compute_instance.db,
    storage = yandex_compute_instance.storage
    }
  )
  filename = "inventory"
}




