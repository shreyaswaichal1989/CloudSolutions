terraform {
 /* backend "gcs" {
    bucket = "cluster-bucket-statefile1"
    prefix = "terraform/state"
  //credentials = "serviceaccount-keys.json"
  }*/
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.0.1"
    }
  }
}

provider "google" {
 project = "cloudassignments-434711"
 region = "us-central1"
 zone  = "us-central1-a"
//credentials = "serviceaccount-keys.json"
}
