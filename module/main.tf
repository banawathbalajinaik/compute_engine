provider "google" {
  project     = "inframod-training"
  region      = "us-central1"
  credentials = file("inframod-training-731ed4a897e2.json")
}

module "compute_engine" {
  source = ".//modules-1"
}
