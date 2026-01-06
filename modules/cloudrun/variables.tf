variable "service_name" {
  description = "The name of the Cloud Run service"
  type        = string
}

variable "location" {
  description = "The location of the Cloud Run service"
  type        = string
}

variable "project_id" {
  description = "The project ID"
  type        = string
}

variable "image" {
  description = "The Docker image to deploy"
  type        = string
}

variable "container_port" {
  description = "The port the container listens on"
  type        = number
  default     = 8080
}

variable "resources" {
  description = "Resource limits/requests"
  type        = map(string)
  default = {
    "cpu"    = "1000m"
    "memory" = "512Mi"
  }
}
