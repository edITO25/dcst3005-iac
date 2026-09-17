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
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = var.location
  tags     = local.common_tags
}

//inneholder variabler som defineres i variables.tf
module "network" {
  source      = "../../modules/network"
  rg_name     = azurerm_resource_group.rg.name
  location    = var.location
  vnet_name   = local.vnet_name
  subnet_name = local.subnet_name
  common_tags = local.common_tags
  address_space = var.address_space
}

module "compute" {
  source  = "../../modules/compute"
  rg_name = azurerm_resource_group.rg.name
  //linjen over sender ressursgruppe fra root ned i hver modul
  location  = var.location
  vm_name   = local.vm_name
  subnet_id = module.network.subnet_id
  //linjen over sender subnet-ID fra én modul inn i en annen-via root
  nic_name       = local.nic_name
  admin_password = var.admin_password
  admin_username = var.admin_username
  vm_size        = var.vm_size
  common_tags    = local.common_tags
}