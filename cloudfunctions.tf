resource "google_cloudfunctions2_function" "this" {
  name     = "minha-funcao"
  location = "us-central1"

  build_config {
    runtime     = "nodejs18"
    entry_point = "handler"
  }

  service_config {
    available_memory = "256M"
  }
}
