terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }   
  }
}
provider "google" {
  project     = var.google_project
  region      = var.google_region
  zone        = var.google_zone
  credentials = var.google_key_file_path
}