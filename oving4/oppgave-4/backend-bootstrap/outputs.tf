
output "backend_rg_name" {
  value = azurerm_resource_group.rg.name
}

output "backend_sa_name" {
  value = azurerm_storage_account.sa.name
}

output "backend_container_name" {
  value = azurerm_storage_container.tfstate.name
}

//EOT -> flere linjer tekst uten å måtte bruke anførselstegn på hver linje 
output "backend_hcl_template" {
  value       = <<-EOT
    resource_group_name  = "${azurerm_resource_group.rg.name}"
    storage_account_name = "${azurerm_storage_account.sa.name}"
    container_name       = "${azurerm_storage_container.tfstate.name}"
    use_azuread_auth     = true
  EOT
  description = "Lim rett inn i shared/backend.hcl."
}
 