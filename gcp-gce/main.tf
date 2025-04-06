resource "google_compute_instance" "vmfromtf" {
  name = "vmfromtf"
  zone = "asia-southeast1-b"
  machine_type = "n1-standard-2"
  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20250311"
      size = "10"
    }
  }
  network_interface {
    network = "customvpc"
    subnetwork = "sub-sg"
  }
  allow_stopping_for_update = true
}