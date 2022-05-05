provider "google" {
  project     = "tesing-342306"
  region      = "us-central1"
  credentials = file("tesing-342306-f93e1b4153bc.json")
}

resource "google_compute_instance" "balaji" {
  name         = "testing1"
  machine_type = "e2-medium"
  zone         = "us-central1"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}
