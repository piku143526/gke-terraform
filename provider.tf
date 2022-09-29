# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "noted-cider-362008"
  region  = "us-central1"
  credentials = file("./terraform-sa.json")
}

# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "piku_bucket_1"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

