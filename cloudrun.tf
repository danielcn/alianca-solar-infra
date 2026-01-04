resource "google_cloud_run_service" "this" {
  name     = "alianca"
  location = "us-central1"
  project  = "alianca-solar"

  template {
    spec {
      containers {
        image = "us-central1-docker.pkg.dev/alianca-solar/cloud-run-source-deploy/alianca@sha256:7ea696b312747133d64aeba7f1b77d677a698569475e92473a2fb7e7e4f0a0c2"

        ports {
          container_port = 8080
          name           = "http1"
          protocol       = null
        }

        resources {
          limits = {
            "cpu"    = "1000m"
            "memory" = "512Mi"
          }
        }

        startup_probe {
          failure_threshold     = 1
          initial_delay_seconds = 0
          period_seconds        = 240
          timeout_seconds       = 240

          tcp_socket {
              port = 8080
          }
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
