resource "google_compute_network" "autovpc" {
  name = "autovpc"
  auto_create_subnetworks = true
}

resource "google_compute_network" "customvpc" {
  name = "customvpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "sub-singapore" {
  name = "sub-sg"
  network = google_compute_network.customvpc.id
  ip_cidr_range = "10.1.0.0/24"
  region = "asia-southeast1"
}

resource "google_compute_firewall" "allow-icmp" {
  name = "allow-icmp"
  network = google_compute_network.customvpc.id
  allow {
    protocol = "icmp"
  }
  source_ranges = ["10.0.0.9/32"]
}

output "auto" {
  value = google_compute_network.autovpc.id
}

output "custom" {
  value = google_compute_network.customvpc.id
}