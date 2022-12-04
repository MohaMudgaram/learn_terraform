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

# Decalaring Local Variables
locals {
  resource_group_name = "learn-e64d16ee-0545-488b-b7ed-e146cb0c5922"
  location            = "westus"
}

output "vnet_guid" {
  value = azurerm_virtual_network.vnet.guid
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vnet" {
  name                = "example-network"
  resource_group_name = local.resource_group_name
  location            = local.location
  address_space       = ["10.0.0.0/16"]
}