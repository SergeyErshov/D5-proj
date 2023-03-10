# Создание ВМ с помощью модуля

module "yandex_instance_1" {
  source                = "./modules/create_vm"
  disk_size             = "35"
  disk_type             = "network-ssd"
  disk_name             = "sys"
  is_second_disk        = "false"
  disk2_size            = "60"
  disk2_type            = "network-ssd"
  disk2_name            = "data"
  cores                 = "4"
  memory                = "8"
  core_fract            = "20"
  instance_family_image = "ubuntu-2204-lts"
  instance_subnet_name  = "a-ru-central1-a"
  instance_name         = "minikube"
  instance_description  = "minikube k8s cluster"
  zone_name             = "ru-central1-a"
  is_ex_static_ipv4     = "false"
  ex_ipv4_name          = "ex-ip-test"
}
