terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}

provider "azurerm" {
  features {}
  # subscription_id = "60e43b59-17e9-40fa-bca0-48cf63303fd9"
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"            # or your TFE appliance hostname
    organization = "Default Project"

    workspaces {
      name = "Azure_kubernetes_terraform"
    }
  ARM_CLIENT_ID = "50e7f39e-3846-45fa-947e-69ad278442dd"
  ARM_CLIENT_SECRET = var.ARM_CLIENT_SECRET
  ARM_TENANT_ID = "ffde4520-1d7d-49fc-9cce-1d3e3512bf07"
  ARM_SUBSCRIPTION_ID = "60e43b59-17e9-40fa-bca0-48cf63303fd9"
  }
}