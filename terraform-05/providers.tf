terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=1.8.4"





# cat ~/.aws/config 
# [default]
# region=ru-central1
# cat ~/.aws/credentials 
# [default]
# aws_access_key_id = YCAJEK...
# aws_secret_access_key = YCMBzZ3...


#For terraform >=1.6<=1.8.5

  backend "s3" {
    
    shared_credentials_files = ["~/.aws/credentials"]
    profile = "default"
    region="ru-central1"

    bucket     = "tarahumara" 
    key = "prod/terraform.tfstate"
    
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true # Необходимая опция Terraform для версии 1.6.1 и старше.
    skip_s3_checksum            = true # Необходимая опция при описании бэкенда для Terraform версии 1.6.3 и старше.

  endpoints ={
    dynamodb = "https://docapi.serverless.yandexcloud.net/ru-central1/b1gs93pelf036enaiodt/etnsbevgg3qmrio8pfaf"
    s3 = "https://storage.yandexcloud.net"
  }

    dynamodb_table              = "teflock"
  }

  
}



provider "yandex" {
 # token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.default_zone
  service_account_key_file = file("~/.authorized_key.json")
}

