resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = "Production"
  }
}

resource "azurerm_resource_group" "secondary_rg" {
  provider = azurerm.secondary
  name     = "secondary-resource-group"
  location = "eastus"
}