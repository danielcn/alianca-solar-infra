resource "google_cloudfunctions2_function" "this" {
  name     = "my-function"
  location = "us-central1"

  build_config {
    runtime     = "python39"
    entry_point = "handler"
  }

  service_config {
    available_memory = "256M"
  }
}
