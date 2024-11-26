output "subway" {
  value = yandex_vpc_subnet.fabric_a
  }

output "netko" {
  value = yandex_vpc_network.fabric
  }
  
  
  /*
  	Модуль должен возвращать в root module с помощью output информацию о yandex_vpc_subnet. Пришлите скриншот информации из terraform console о своем модуле. Пример: > module.vpc_dev
  
 
	Замените ресурсы yandex_vpc_network и yandex_vpc_subnet созданным модулем. Не забудьте передать необходимые параметры сети из модуля vpc в модуль с виртуальной машиной.
  */
