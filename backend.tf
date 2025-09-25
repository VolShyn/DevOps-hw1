terraform {
  # state bucket
  backend "gcs" {
    bucket = "state-bucket-424-91a824"
    prefix = "terraform/state/dev"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
  }
}
