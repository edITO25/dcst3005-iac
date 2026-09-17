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

//trenger ikke å lage rg her 

//inneholder variabler som defineres i variables.tf
module "network" {
  source         = "../modules/network"
  rg_name        = var.rg_name
  location       = var.location
  base_name      = var.base_name
  address_space  = var.address_space
  subnets        = var.subnets
  subnet_newbits = var.subnet_newbits
  tags           = var.tags
}

module "compute" {
  source  = "../modules/compute"
  rg_name = var.rg_name
  //linjen over sender ressursgruppe fra root ned i hver modul
  location  = var.location
  base_name = var.base_name
  subnet_id = module.network.subnet_ids[var.vm_subnet_key]
  //linjen over sier hvilket subnet maksinen havner på
  admin_password = var.admin_password
  admin_username = var.admin_username
  vm_size        = var.vm_size
  tags           = var.tags
}

