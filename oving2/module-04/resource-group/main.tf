terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

//en child module krever en provider, men konfigurerer den ikke. Selve oppsettet arves fra root-modulen som kaller den.
resource "azurerm_resource_group" "rg" {
  name     = format("rg-%s", lower(var.base_name))
  location = var.location
}