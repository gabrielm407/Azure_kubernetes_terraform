terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 2.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "60e43b59-17e9-40fa-bca0-48cf63303fd9"
}

provider "azurerm" {
  alias           = "secondary"
  features        {}
  subscription_id = "YOUR_SECOND_SUBSCRIPTION_ID"
  tenant_id       = "YOUR_SECOND_TENANT_ID" # optional, if needed
}

module "example" {
  source   = "./modules/example"
  providers = {
    azurerm = azurerm.secondary
  }
}