module "aks" {
  source                  = "./modules/aks"
  kubernetes_cluster_name = var.kubernetes_cluster_name
  location                = module.resource_group.location
  resource_group_name     = module.resource_group.name
  dns_prefix              = "myaks01"
  kubernetes_node_count   = var.kubernetes_node_count
  kubernetes_node_size    = var.kubernetes_node_size

  depends_on = [ module.virtual_network ]
}