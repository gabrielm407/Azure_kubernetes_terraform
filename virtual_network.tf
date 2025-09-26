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