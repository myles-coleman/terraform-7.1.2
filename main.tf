terraform {
  backend "azurerm" {
    resource_group_name  = "RG-mcoleman-bootcamp"
    storage_account_name = "mylesstorage"
    container_name       = "tfstate-myles"
    key                  = "prod.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    use_oidc             = true
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
      use_oidc = true
    }
  }

  required_version = ">= 1.2.0"
}

# configure specified provider
provider "azurerm" {
  features {}
}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "mcolemanTFVnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
}
