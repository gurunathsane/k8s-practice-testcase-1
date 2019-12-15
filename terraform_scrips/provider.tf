provider "google" {
  credentials = file("../creds/${var.service_account_file_name}")
  project     = var.gcp_project
  region      = var.region
}
