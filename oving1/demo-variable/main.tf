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
  name     = "${local.rgprefix}-rg"
  location = var.location
  tags     = local.common_tags
}


resource "azurerm_storage_account" "sa" {
  name                     = "sta${local.saprefix}"
  resource_group_name      = azurerm_resource_group.rgsa.name
  location                 = azurerm_resource_group.rgsa.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = local.common_tags

}

output "sa_id" {
  value = azurerm_storage_account.sa.id
  
}

