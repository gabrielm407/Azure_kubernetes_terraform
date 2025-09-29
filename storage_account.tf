module "storage_account" {
  source = "git::git@github.com:Azure-Terraform/terraform-azurerm-storage-account.git?ref=v1.2.0"

  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  tags                = module.resource_group.tags

  public_network_access_enabled = false
  replication_type              = "LRS"
  enable_large_file_share       = true

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
}