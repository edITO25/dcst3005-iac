//Terraform- og providerversjoner. 
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }

    //random provider 
    //storage account-navn må være globalt unik 
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}