resource "google_storage_bucket" "gcs2" {
  name = "tf-bucket-from-vscode"
  storage_class = "NEARLINE"
  location = "us-west1"
  labels = {
    "env" = "dev-learning"
    "dep" = "dbbuk"
  }
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "picture" {
  name = "My first image"
  bucket = google_storage_bucket.gcs2.name
  source = "IMG20250331223028.jpg"
}