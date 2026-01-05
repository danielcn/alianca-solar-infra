terraform {
  backend "gcs" {
    bucket  = "alianca-solar-terraform-state-dev"
    prefix = "cloud-run"
  }
}
