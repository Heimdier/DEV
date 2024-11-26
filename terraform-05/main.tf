/*

#создаем облачную сеть
resource "yandex_vpc_network" "develop" {
  name = "develop"
}

#создаем подсеть
resource "yandex_vpc_subnet" "develop_a" {
  name           = "develop-ru-central1-a"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = ["10.0.1.0/24"]
}

*/
/*
resource "yandex_vpc_subnet" "develop_b" {
  name           = "develop-ru-central1-b"
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = ["10.0.2.0/24"]
}*/
#-------------------------------------------------------------------

module "test-vm" {
  source         = "git::https://github.com/Heimdier/yandex_compute_instance.git?ref=main"
  env_name       = var.vpc_name1
#  network_id     = yandex_vpc_network.develop.id
  network_id	 = module.vpc.netko.id
  subnet_zones   = [var.default_zone]
#  subnet_ids     = [yandex_vpc_subnet.develop_a.id,yandex_vpc_subnet.develop_b.id]
  subnet_ids     = [module.vpc.subway.id]
  instance_name  = var.vpc_name1
  instance_count = 1
  image_family   = var.vm_web_family
  public_ip      = var.pub-ip

  labels = { 
 #   owner= "viktor",
    project = var.labels1
     }

  metadata = {
    user-data          = data.template_file.cloudinit.rendered #Для демонстрации №3
    serial-port-enable = 1
  }

}

module "example-vm" {
  source         = "git::https://github.com/Heimdier/yandex_compute_instance.git?ref=main"
  env_name       = var.vpc_name2
#  network_id     = yandex_vpc_network.develop.id
  network_id     = module.vpc.netko.id
  subnet_zones   = [var.default_zone]
#  subnet_ids     = [yandex_vpc_subnet.develop_a.id]
  subnet_ids     = [module.vpc.subway.id]
  instance_name  = var.vpc_name2
  instance_count = 1
  image_family   = var.vm_web_family
  public_ip      = var.pub-ip

  labels = { 
#    owner= "viktor",
    project = var.labels2
     }

  metadata = {
    user-data          = data.template_file.cloudinit.rendered #Для демонстрации №3
    serial-port-enable = 1
  }

}
/*
#Пример передачи cloud-config в ВМ для демонстрации №3
data "template_file" "cloudinit" {
  template = file("./cloud-init.yml")
}

Напишите локальный модуль vpc, который будет создавать 2 ресурса: одну сеть и одну подсеть в зоне, объявленной при вызове модуля, например: ru-central1-a.
Вы должны передать в модуль переменные с названием сети, zone и v4_cidr_blocks.
Модуль должен возвращать в root module с помощью output информацию о yandex_vpc_subnet. Пришлите скриншот информации из terraform console о своем модуле. Пример: > module.vpc_dev
Замените ресурсы yandex_vpc_network и yandex_vpc_subnet созданным модулем. Не забудьте передать необходимые параметры сети из модуля vpc в модуль с виртуальной машиной.


"network_id" is required, but no definition was found
"subnet_zones" 
"subnet_ids"
/
*/



module "vpc" {
  source        = "./vpc"
  net_name      = var.net_name
  zone 	 	= var.zone
  cidr 		= var.cidr
  
   metadata = {
   serial-port-enable = 1
}
}


#  metadata = {
#  serial-port-enable = 1
