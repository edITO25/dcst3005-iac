//backend-TYPEN velges 

//Det som skiller app fra nettverk er "key", som står i init-kommandoen, ikke i koden 

/*
terraform init \
#      -backend-config="../../../shared/backend.hcl" \
#      -backend-config="key=dev/app.tfstate"
#
#  To stack-instanser med samme key er ÉN instans, sett fra Terraform. Det er
#  den dyreste feilen du kan gjøre med en backend-blokk.
*/

terraform {
  backend "azurerm" {}
}