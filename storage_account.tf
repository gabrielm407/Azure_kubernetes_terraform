module "storage_account" {
  source   = "git::git@github.com:Azure-Terraform/terraform-azurerm-storage-account.git?ref=v1.2.0"
  for_each = toset(local.environments)

  resource_group_name = module.resource_group[each.key].name
  name                = "mystorageacct${each.value}405" # Adding 405 at the end to ensure uniqueness, as storage account names must be globally unique
  location            = module.resource_group[each.key].location
  tags                = module.resource_group[each.key].tags

  public_network_access_enabled = true
  replication_type              = "LRS"
  enable_large_file_share       = true
  shared_access_key_enabled     = true

  access_list = {
    "my_ip" = "0.0.0.0/0"
  }

  service_endpoints = {
    "my-subnet" = module.virtual_network.subnet_id
  }

  enable_static_website = true

  blob_cors = {
    test = {
      allowed_headers    = ["*"]
      allowed_methods    = ["GET", "DELETE"]
      allowed_origins    = ["*"]
      exposed_headers    = ["*"]
      max_age_in_seconds = 5
    }
  }

  depends_on = [module.virtual_network] # This isn't required since Terraform is smart enough to figure it out since it references the virtual network module on line 21 and knows that module must be created first
}