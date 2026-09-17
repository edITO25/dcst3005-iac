locals {
  rg_name     = lower(format("%s-%s", var.rg_base_name, var.environment))
  vnet_name   = lower(format("%s-%s", var.vnet_base_name, var.environment))
  subnet_name = lower(format("%s-%s", var.subnet_base_name, var.environment))
  vm_name     = lower(format("%s-%s", var.vm_base_name, var.environment))
  nic_name    = lower(format("%s-%s", var.nic_base_name, var.environment))

  common_tags = {
    environment = var.environment
    owner       = var.owner
    managedby   = var.managedby

  }
}