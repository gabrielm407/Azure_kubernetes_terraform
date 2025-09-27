module "virtual_network" {
  source              = "./modules/virtual_network"
  address_space       = var.virtual_network_address_space
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  subnet_name         = var.subnet_name
  address_spaces      = ["10.0.1.0/24"]
  tags                = module.resource_group.tags

  depends_on = [ module.resource_group]
}