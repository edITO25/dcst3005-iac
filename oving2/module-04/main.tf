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


module "resource_group" {
  source    = "./resource-group"
  base_name = "TFDemo"
  location  = "Norway East"
}

module "storage_account" {
  source    = "./storage-account"
  base_name = "TFDemo"
  //forteller terraform at storage_account avhenger av resource_group 
  rg_name   = module.resource_group.rg_name
  location  = "Norway East"
}