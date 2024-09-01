resource "random_string" "random-vm-name" {
 
 length  = 9
  upper   = false
  #number  = false
  lower   = true
  special = false
}

locals {
  vm-name = "${random_string.random-vm-name}-cloudsolutions"
}


resource "google_compute_instance" "vm-cloud-assesments" {
  name="vm-cloud-assesments"
  #name=local.vm-name
  machine_type = "e2-medium"
  zone="us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"


  }
}
