resource "azurerm_virtual_network" "main" {
  name                = var.name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags

  subnet {
    name             = var.subnet_name
    address_prefixes = var.address_spaces
  }
}