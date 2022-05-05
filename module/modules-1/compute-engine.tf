resource "google_compute_instance" "balaji" {
  name         = "balaji"
  machine_type = "e2-micro"
  zone         = "asia-south1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network    = "default"
  }
}


