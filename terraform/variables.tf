variable "yc_cloud" {
  type        = string
  description = "Yandex Cloud ID"
}

variable "yc_folder" {
  type        = string
  description = "Yandex Cloud folder"
}

variable "yc_sa_key_file" {
  type        = string
  description = "Yandex Cloud Service Account key file"
}

variable "db_password" {
  type        = string
  description = "MySQL user pasword"
}

variable "image_id" {
  #  yc compute image get-latest-from-family ubuntu-2204-lts --folder-id standard-images
  type        = string
  description = "Disk image id to bootstrap OS (ubuntu 22.04)"
  default     = "fd84kp940dsrccckilj6"
}

variable "ssh_key_file" {
  type        = string
  description = "private ssh key file"
  default     = "~/.ssh/yandex_cloud.pub"
}

variable "instances" {
  description = "Map to define regional instances"
  type = list(object({
    name : string,
    zone : string
    })
  )
  default = [
    {
      name = "wp-app-1"
      zone = "ru-central1-a"
    },
    {
      name = "wp-app-2"
      zone = "ru-central1-b"
    }
  ]
}
