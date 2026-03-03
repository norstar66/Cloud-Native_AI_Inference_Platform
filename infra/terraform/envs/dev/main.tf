module "project_services" {
  source      = "../../modules/project_services"
  project_id  = var.project_id
}

module "network" {
  source      = "../../modules/network"
  project_id  = var.project_id
  region      = var.region
  name_prefix = var.name_prefix
}

module "artifact_registry" {
  source      = "../../modules/artifact_registry"
  project_id  = var.project_id
  region      = var.region
  name_prefix = var.name_prefix
}

# Uncomment as modules are implemented
# module "iam" {}
# module "cloud_run" {}
# module "ops_vm" {}
# module "observability" {}
