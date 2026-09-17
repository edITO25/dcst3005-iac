//verdiene kommer fra modulen nettverk 
//Vi må se i outputs til modulen 

output "subnet_ids" {
  value       = module.network.subnet_ids
  description = "Subnet-ID per subnettnavn. LESES AV APP-STACKEN – ikke fjern."
}

output "vnet_name" {
  value       = module.network.vnet_name
  description = "Navnet på det virtuelle nettverket."
}

output "subnet_prefixes" {
  value       = module.network.subnet_prefixes
  description = "Utregnet adresseprefiks per subnett. Til feilsøking."
}

