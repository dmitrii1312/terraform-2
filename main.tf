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
      image_id = "fd8kcqkhjtt5igo42l14"
    }
  }
  network_interface {
    subnet_id = "e9bjuphmhoj2rebvm4ca"
  }
  metadata = {
    ssh-keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDLCEO+rJTUNexhZNjQlbC64jWUw9b84mP8bknK6gOUvR7m/SmIE/bPv5KBeovy4dmxPyGjBCGJzra0xqN4Q/Q807Lg60hNXEYfa7pmdIvrHLlyfK+FrxHlXSgk402Rikx3FH30utZswIjjsmnZ4XWOwnsl+JyeJknnQ2lMrLmEga6vj3v8AT3r1SOvwhpnTA2vO2iVl7J7tFG/VBDal6GrcKWdld3aQLdHuReAmNu/lewIdK3XDEpPWrmZE89Mcs4VT3MBMo9m4zBxAUzdvs7KEsd2j7oxitmorU9JH+x6T9FYNsfjnlEbqSmuQ8R9hv800dXvlKKe1dZ4KOWocZcpncpqdIkL7dY3YXT2hPco6f61qjuIW3QouJ3xDRyH4inOHlRTlzLuFKsyhjfwzqE68C0RySnKL/z4q+5JMeMPQJquhQj+5tLg+l/GTda6XtBr5SMgVXKARlHf43bpPNPfTys3s2N5SYUrhpVqr7vblGRa9XI+3s7C6xqjZ3b3MqM= dmitrii@dmitrii-virtual-machine"
  }
}
