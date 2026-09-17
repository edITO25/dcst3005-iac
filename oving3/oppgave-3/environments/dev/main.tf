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
  name     = format("rg-%s", local.base_name)
  location = var.location
  tags     = local.tags
}

//Modulen stacks/ bygger infrastrukturen med modulene 
//miljøene kaller stacks/

module "stack" {
  source = "../../stacks"

  rg_name         = azurerm_resource_group.rg.name
  location        = var.location
  base_name       = local.base_name
  tags            = local.tags
  subscription_id = var.subscription_id

  address_space  = var.address_space
  subnets        = var.subnets
  vm_size        = var.vm_size
  vm_subnet_key  = var.vm_subnet_key
  admin_username = var.admin_username
  admin_password = var.admin_password
}