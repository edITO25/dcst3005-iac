
output "subnet_ids" {
  value = module.network.subnet_ids
}

output "subnet_prefixes" {
  value = module.network.subnet_prefixes

}


output "vnet_name" {
  value = module.network.vnet_name
}



output "vm_name" {
  value = module.compute.vm_name
}

output "vm_private_ip" {
  value = module.compute.private_ip_address
}

