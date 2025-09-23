resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = "Production"
  }
}

resource "azurerm_virtual_network" "main" {
  name                = "my-vnet-name"
  address_space       = var.virtual_network_address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  subnet {
    name             = var.subnet_name
    address_prefixes = ["10.0.1.0/24"]
  }

  tags = {
    environment = "Production"
  }
  depends_on          = [azurerm_resource_group.main]
}

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