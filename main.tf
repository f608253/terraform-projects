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