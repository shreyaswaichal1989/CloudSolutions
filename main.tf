resource "random_id" "random-vm-name" {
 
  byte_length = 8
}


resource "google_compute_instance" "vm-cloud-assesments" {
  #name="vm-cloud-assesments"
  name=random_id.random-vm-name.hex
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
