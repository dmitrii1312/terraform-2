provider "yandex" {
  cloud_id  = "b1gdi5987arb0pnup4lj"
  folder_id = "b1gud7usbuekc5a56rtd"
  zone      = "ru-central1-a"
}

resource "yandex_compute_instance" "vm" {
  name = "ubuntu"
  zone = "ru-central1-a"
  resources {
    cores = 2
    memory = 2
  }
  boot_disk {
    initialize_params {
      image_id = "fd888ru6t6codt07lbom"
    }
  }
  network_interface {
    subnet_id = "e9bjuphmhoj2rebvm4ca"
  }
  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
