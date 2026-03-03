output "vpc_name" {
  value = module.network.vpc_name
}

output "artifact_repo" {
  value = module.artifact_registry.repository_id
}
