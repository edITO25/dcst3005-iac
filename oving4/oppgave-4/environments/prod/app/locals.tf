locals {
    base_name = lower(format("%s-%s-%s",var.project, var.environment, var.shortname))
    
    //henter informasjon fra nettverk-stacken 
    //henter id-en til subnettet vm-en er plassert i 
    subnet_id = data.terraform_remote_state.nettverk.outputs.subnet_ids[var.vm_subnet_key]

    tags = {  //må ha "=" her
        enviroment = var.environment
        project = var.project
        shortname = var.shortname 
        stack = "app"
        managedby = "terraform"
    } 
}

