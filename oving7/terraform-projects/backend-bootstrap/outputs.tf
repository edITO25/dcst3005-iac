output "backend_rg_name" {
  value       = azurerm_resource_group.rg.name
  description = "Navnet på ressursgruppen state-lagringen ligger i"
}

output "backend_sa_name" {
  value       = azurerm_storage_account.sa.name
  description = "Navnet på storage accounten state-filene lagres i"
}

output "backend_container_name" {
  value       = azurerm_storage_container.tfstate.name
  description = "Containeren state-filene lagres i"
}

output "backend_hcl_template" {
  value       = <<-EOT
    resource_group_name  = "${azurerm_resource_group.rg.name}"
    storage_account_name = "${azurerm_storage_account.sa.name}"
    container_name       = "${azurerm_storage_container.tfstate.name}"
    use_azuread_auth     = true
  EOT
  description = "Lim rett inn i shared/backend.hcl."
}


