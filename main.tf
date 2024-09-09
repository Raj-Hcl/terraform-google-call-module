provider "google"{
    project = "refreshing-oven-432114-i0"
    region  = "us-central1"
}

module "rt-bucket" {
  source  = "app.terraform.io/db-trial/rt-bucket/google"
  version = "0.0.1"
  # insert required variables here
  bucket_name     = "terraform-google-rt-bucket"
  bucket_location = "US"
  storage         = "STANDARD"
}