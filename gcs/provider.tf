terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "3.85.0"
    }
  }
}

provider "google" {
  project = "extended-cable-455910-g2"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "keys.json"
}

