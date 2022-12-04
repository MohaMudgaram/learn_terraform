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

output "public_ip_address" {
  value = azurerm_public_ip.pip.ip_address
}

# Create a Public IP within the resource group
resource "azurerm_public_ip" "pip" {
  name                = "publicIp1204220114"
  resource_group_name = local.resource_group_name
  location            = local.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}