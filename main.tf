terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.29.0"
    }
  }
}

provider "google" {
  project = "extended-cable-455910-g2"

}

resource "google_compute_instance" "terraform" {
  project = "extended-cable-455910-g2"
  name = "terraform"
  machine_type = "n1-standard-1"
  zone = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}