terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.124.0"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  service_account_key_file = var.yc_sa_key_file
  folder_id                = var.yc_folder
  cloud_id                 = var.yc_cloud
  zone                     = "ru-central1-d"
}
