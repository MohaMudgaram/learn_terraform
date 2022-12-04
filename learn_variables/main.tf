# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

output "vnet_guid" {
  value = azurerm_virtual_network.vnet.guid
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vnet" {
  name                = "example-network"
  resource_group_name = var.rg_name
  location            = var.rg_location
  address_space       = ["${var.vnet_address_space}/16"]
}