## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.8.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.fabric](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.fabric_a](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boot_disk_size"></a> [boot\_disk\_size](#input\_boot\_disk\_size) | n/a | `number` | `10` | no |
| <a name="input_boot_disk_type"></a> [boot\_disk\_type](#input\_boot\_disk\_type) | n/a | `string` | `"network-hdd"` | no |
| <a name="input_cidr"></a> [cidr](#input\_cidr) | n/a | `string` | `"10.0.9.0/24"` | no |
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id | `string` | `"b1gs93pelf036enaiodt"` | no |
| <a name="input_default_zone"></a> [default\_zone](#input\_default\_zone) | https://cloud.yandex.ru/docs/overview/concepts/geo-scope | `string` | `"ru-central1-a"` | no |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | `"TODO: description;"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id | `string` | `"b1g3ai68fnkbce7hpvgq"` | no |
| <a name="input_image_family"></a> [image\_family](#input\_image\_family) | n/a | `string` | `"ubuntu-2004-lts"` | no |
| <a name="input_instance_core_fraction"></a> [instance\_core\_fraction](#input\_instance\_core\_fraction) | n/a | `number` | `5` | no |
| <a name="input_instance_cores"></a> [instance\_cores](#input\_instance\_cores) | n/a | `number` | `2` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | n/a | `number` | `1` | no |
| <a name="input_instance_memory"></a> [instance\_memory](#input\_instance\_memory) | n/a | `number` | `1` | no |
| <a name="input_known_internal_ip"></a> [known\_internal\_ip](#input\_known\_internal\_ip) | n/a | `string` | `""` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | for dynamic block 'labels' | `map(string)` | `{}` | no |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | for dynamic block 'metadata' | `map(string)` | n/a | yes |
| <a name="input_net_name"></a> [net\_name](#input\_net\_name) | n/a | `string` | `"rruuc"` | no |
| <a name="input_platform"></a> [platform](#input\_platform) | Example to validate VM platform. | `string` | `"standard-v1"` | no |
| <a name="input_preemptible"></a> [preemptible](#input\_preemptible) | n/a | `bool` | `true` | no |
| <a name="input_public_ip"></a> [public\_ip](#input\_public\_ip) | n/a | `bool` | `false` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | n/a | `list(string)` | `[]` | no |
| <a name="input_service_account_id"></a> [service\_account\_id](#input\_service\_account\_id) | n/a | `string` | `null` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | `string` | `"ru-central1-c"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_netko"></a> [netko](#output\_netko) | n/a |
| <a name="output_subway"></a> [subway](#output\_subway) | n/a |
