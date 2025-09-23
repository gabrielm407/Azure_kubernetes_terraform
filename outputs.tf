output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "virtual_network_id" {
  value = azurerm_virtual_network.main.id
}

output "kubernetes_cluster_id" {
  value = azurerm_kubernetes_cluster.aks.id
}

output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}