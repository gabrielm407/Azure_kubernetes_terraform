resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.kubernetes_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.kubernetes_node_count
    vm_size    = var.kubernetes_node_size
  }

  identity {
    type = "SystemAssigned"
  }
}