/*resource "google_compute_instance" "vm-cloud-assesments" {
  name="vm-cloud-assesments"
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


}*/

  module "bucket" {
  source            = "D:\\CloudAnswers\\CloudSolutions\\modules\\bucket"
  bucket_name       = "cloudsolutions-tf"
  bucket_location   = "us-central1"
}
