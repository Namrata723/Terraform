provider "google" {
  credentials = file("terraform-key.json")
  project     = "acn-deliverylearning-devops"
  region      = "us-central1"
  zone        = "us-central1-c"
}

# Create a GCS Bucket

resource "google_storage_bucket" "mybucket13july" {
  name     = "vishnubucket3march"
  location = "us-central1"
}
resource "google_storage_bucket_object" "mybucket13july" {
  name   = "cloud"
  source = "Cloud.jpg"
  bucket = "mybucket13july"
}


