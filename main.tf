# Configure the Azure provider
terraform {
  backend "azurerm" {
    resource_group_name  = "zvstore"
    storage_account_name = "zvstore"
    container_name       = "tfstate"
    key                  = "zv.tfstate"
  }
}

# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.48.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "zvterra" {
  source      = "./modules"
  environment = var.environment
  location    = var.location
}
