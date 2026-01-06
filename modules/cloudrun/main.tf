resource "google_cloud_run_service" "this" {
  name     = var.service_name
  location = var.location
  project  = var.project_id

  template {
    spec {
      containers {
        image = var.image

        ports {
          container_port = var.container_port
          name           = "http1"
        }

        resources {
          limits = var.resources
        }

        startup_probe {
          failure_threshold     = 1
          initial_delay_seconds = 0
          period_seconds        = 240
          timeout_seconds       = 240

          tcp_socket {
            port = var.container_port
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
