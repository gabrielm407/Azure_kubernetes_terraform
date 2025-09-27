output "resource_group_name" {
  value = var.resource_group_name
}

output "virtual_network_id" {
  value = module.virtual_network.id
}

output "kubernetes_cluster_id" {
  value = module.aks.id
}

output "kubernetes_cluster_name" {
  value = module.aks.name
}