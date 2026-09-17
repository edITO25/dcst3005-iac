terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a3adf20e-4966-4afb-b717-4de1baae6db1"
}


resource "azurerm_resource_group" "rgsa" {
  name     = "rg-demo-emmad"
  location = "West Europe"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-demo-emmad"
  location            = azurerm_resource_group.rgsa.location
  resource_group_name = azurerm_resource_group.rgsa.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefixes = ["10.0.4.0/24"]
  }

  subnet {
    name           = "subnet2"
    address_prefixes = ["10.0.2.0/24"]
  }
}