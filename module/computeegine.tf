provider "google" {
  project     = "inframod-training"
  region      = "asia-south1"
  credentials = file("inframod-training-d2041373fd4a.json")
}

resource "google_compute_instance" "rohit" {
  name         = "rohit1"
  machine_type = "e2-medium"
  zone         = "asia-south1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}
