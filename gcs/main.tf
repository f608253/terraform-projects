resource "google_storage_bucket" "gcs2" {
  name = "tf-bucket-from-vscode"
  storage_class = "COLDLINE"
  location = "us-west1"
}