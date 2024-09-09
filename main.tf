provider "google"{
    project = "refreshing-oven-432114-i0"
    region  = "us-central1"
}

module "rt-bucket" {
  source  = "app.terraform.io/db-trial/rt-bucket/google"
  version = "0.0.2"
  # insert required variables here
  bucket_name     = "rt-bucket-practicee"
  bucket_location = "US"
  storage         = "STANDARD"
}

variable "GOOGLE_CREDENTIALS" {
    type = string
}