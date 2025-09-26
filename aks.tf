resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.kubernetes_cluster_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  tags                = azurerm_resource_group.main.tags
  dns_prefix          = "myaks01"

  default_node_pool {
    name       = "default"
    node_count = var.kubernetes_node_count
    vm_size    = var.kubernetes_node_size
  }

  identity {
    type = "SystemAssigned"
  }
  depends_on          = [azurerm_virtual_network.main]
}