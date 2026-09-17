output "rg_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_name" {
  value       = module.stack.vnet_name
  description = "navnet på virtuelle nettverket"
}

output "subnet_prefixes" {
  value       = module.stack.subnet_prefixes
  description = "Adressene cidrsubnet() regnet ut. Dersom terraform output subnet_prefixes kjøres i to ulike miljøer vil samme kode gi ulike adresser"
}

output "vm_name" {
  value = module.stack.vm_name
}

output "vm_private_ip" {
  value = module.stack.vm_private_ip
}