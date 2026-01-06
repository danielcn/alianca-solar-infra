module "cloudrun" {
  source = "./modules/cloudrun"

  service_name = "alianca"
  location     = "us-central1"
  project_id   = "alianca-solar"
  image        = "us-central1-docker.pkg.dev/alianca-solar/cloud-run-source-deploy/alianca@sha256:7ea696b312747133d64aeba7f1b77d677a698569475e92473a2fb7e7e4f0a0c2"
}

terraform {
  backend "gcs" {
    bucket  = "alianca-solar-terraform-state-dev"
    prefix = "cloud-run"
  }
}
