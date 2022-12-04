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
  resource_group_name = "learn-9766e06c-8f10-4b7f-b666-d711b5424107"
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