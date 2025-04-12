#create bucket
#Upload index.zip
#deploy function
#policy binding

resource "google_storage_bucket" "fun_bucket" {
  name = "fun_bucket_tf_manav"
}

resource "google_storage_bucket_object" "src-code" {
  name = "functioncodeindex.zip"
  bucket = google_storage_bucket.fun_bucket.name
  source = "index.zip"
}

resource "google_cloudfunctions_function" "funfromtt" {
  name = "funfromtfmanav"
  runtime = "nodejs22"
  description = "this is my fn from tf script - with some changes2"
  available_memory_mb = 128
  source_archive_bucket = google_storage_bucket.fun_bucket.name
  source_archive_object = google_storage_bucket_object.src-code.name
  trigger_http = true

  entry_point = "helloworldtf"

}

resource "google_cloudfunctions_function_iam_member" "alloaccess" {
  region = google_cloudfunctions_function.funfromtt.region
  cloud_function = google_cloudfunctions_function.funfromtt.name
  role = "roles/cloudfunctions.invoker"
  member = "allUsers"
}