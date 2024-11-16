## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.8.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_template"></a> [template](#provider\_template) | 2.2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_example-vm"></a> [example-vm](#module\_example-vm) | git::https://github.com/Heimdier/yandex_compute_instance.git | main |
| <a name="module_test-vm"></a> [test-vm](#module\_test-vm) | git::https://github.com/Heimdier/yandex_compute_instance.git | main |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [template_file.cloudinit](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr"></a> [cidr](#input\_cidr) | n/a | `string` | `"10.0.3.0/24"` | no |
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id | `string` | n/a | yes |
| <a name="input_default_cidr"></a> [default\_cidr](#input\_default\_cidr) | https://cloud.yandex.ru/docs/vpc/operations/subnet-create | `list(string)` | <pre>[<br/>  "10.0.1.0/24"<br/>]</pre> | no |
| <a name="input_default_zone"></a> [default\_zone](#input\_default\_zone) | https://cloud.yandex.ru/docs/overview/concepts/geo-scope | `string` | `"ru-central1-a"` | no |
| <a name="input_each_vm"></a> [each\_vm](#input\_each\_vm) | n/a | <pre>list(object({ <br/>        name = string<br/>        core = number<br/>        mem  = number<br/>        fract = number<br/>        disk_v = number<br/>        platform = string<br/>        nat = bool<br/>    }))</pre> | <pre>[<br/>  {<br/>    "core": 2,<br/>    "disk_v": 5,<br/>    "fract": 20,<br/>    "mem": 1,<br/>    "name": "main",<br/>    "nat": true,<br/>    "platform": "standard-v1"<br/>  },<br/>  {<br/>    "core": 2,<br/>    "disk_v": 5,<br/>    "fract": 5,<br/>    "mem": 2,<br/>    "name": "replica",<br/>    "nat": true,<br/>    "platform": "standard-v1"<br/>  }<br/>]</pre> | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id | `string` | n/a | yes |
| <a name="input_hdd_resources"></a> [hdd\_resources](#input\_hdd\_resources) | n/a | <pre>map(object({<br/>        type = string<br/>        size = number<br/>        label = string<br/>    }))</pre> | <pre>{<br/>  "hdd_3": {<br/>    "label": "storage",<br/>    "size": 5,<br/>    "type": "network-hdd"<br/>  },<br/>  "store": {<br/>    "label": "storage",<br/>    "size": 5,<br/>    "type": "network-hdd"<br/>  }<br/>}</pre> | no |
| <a name="input_labels1"></a> [labels1](#input\_labels1) | n/a | `string` | `"marketing"` | no |
| <a name="input_labels2"></a> [labels2](#input\_labels2) | n/a | `string` | `"analitycs"` | no |
| <a name="input_metamaps"></a> [metamaps](#input\_metamaps) | ------- Map variables ------- | <pre>map(object({<br/>        serial = bool<br/>        ssh = string<br/>    }))</pre> | <pre>{<br/>  "meta": {<br/>    "serial": true,<br/>    "ssh": "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKoBYtkaOTscrqxn5/GDjg2Q0rJ6wqRwyQ42aNseGYuL yan"<br/>  }<br/>}</pre> | no |
| <a name="input_net_name"></a> [net\_name](#input\_net\_name) | n/a | `string` | `"plov"` | no |
| <a name="input_pub-ip"></a> [pub-ip](#input\_pub-ip) | n/a | `bool` | `true` | no |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | n/a | `string` | `"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKoBYtkaOTscrqxn5/GDjg2Q0rJ6wqRwyQ42aNseGYuL yan"` | no |
| <a name="input_token"></a> [token](#input\_token) | OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | n/a | `string` | `"ubuntu"` | no |
| <a name="input_vm_web_family"></a> [vm\_web\_family](#input\_vm\_web\_family) | n/a | `string` | `"ubuntu-2004-lts"` | no |
| <a name="input_vms_resources"></a> [vms\_resources](#input\_vms\_resources) | n/a | <pre>map(object({<br/>        core = number<br/>        mem = number<br/>        fract = number<br/>        disk_v = number<br/>        platform = string<br/>        type = string<br/>        nat = bool<br/>    }))</pre> | <pre>{<br/>  "store": {<br/>    "core": 2,<br/>    "disk_v": 5,<br/>    "fract": 5,<br/>    "mem": 2,<br/>    "nat": true,<br/>    "platform": "standard-v1",<br/>    "type": "network-hdd"<br/>  },<br/>  "web": {<br/>    "core": 2,<br/>    "disk_v": 5,<br/>    "fract": 20,<br/>    "mem": 1,<br/>    "nat": true,<br/>    "platform": "standard-v1",<br/>    "type": "network-hdd"<br/>  }<br/>}</pre> | no |
| <a name="input_vpc_name1"></a> [vpc\_name1](#input\_vpc\_name1) | n/a | `string` | `"develop"` | no |
| <a name="input_vpc_name2"></a> [vpc\_name2](#input\_vpc\_name2) | n/a | `string` | `"stage"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | `string` | `"ru-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_out"></a> [out](#output\_out) | n/a |
