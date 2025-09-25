provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# Create bucket
resource "google_storage_bucket" "bucket" {
  name                        = var.bucket_name
  location                    = var.region
  force_destroy               = true
  uniform_bucket_level_access = true
}

# BigQuery
resource "google_bigquery_dataset" "dataset" {
  dataset_id                 = var.bq_dataset
  location                   = "US"
  delete_contents_on_destroy = true
}

# Compute Engine VM
resource "google_compute_instance" "vm" {
  name         = var.vm_instance
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # uses default VPC
    network = "default"
    access_config {}
  }
}
