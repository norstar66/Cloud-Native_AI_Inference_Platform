variable "project_id" { type = string }
variable "region" { type = string }
variable "name_prefix" { type = string }

resource "google_artifact_registry_repository" "repo" {
  project       = var.project_id
  location      = var.region
  repository_id = "${var.name_prefix}-images"
  format        = "DOCKER"
}
