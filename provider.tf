terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.20.0"
    }
  }
}

provider "google" {
  credentials = file("./terraform-sa.json")
  project = "noted-cider-362008"
  region  = "europe-west1-b,europe-west1-c,europe-west1-d"
  zone    = "europe-west1-b,europe-west1-c,europe-west1-d"
}
