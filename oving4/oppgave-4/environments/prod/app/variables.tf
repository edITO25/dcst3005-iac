variable "subscription_id" {
    type = string
    default = null
  
}


variable "shortname" {
    type = string 
}


variable location {
    type = string
    
    validation {
       condition = contains(["northeurope", "uksouth", "westeurope", "norwayeast", "norwaywest", ], var.location)
       error_message = "Location må være innenfor vår tenant"
    }
}



variable "project" {
    type = string
  
}

variable "environment" {
  type = string

  validation {
    condition = contains(["prod", "dev", "test", ], var.environment)
    error_message = "Må bruke valid enviroments prod, dev og test"
  }
}

variable "vm_subnet_key" {
  type = string 
  description = "Hvilket subnett maskinen skal på -> NAVN ikke indeks!"
}

variable "vm_size" {
    type = string
  
}

variable "admin_username" {
    type = string 
    default = "tfadmin"
}

variable "admin_password" {
    type = string
    sensitive = true
  
}

//Backend
variable "backend_resource_group_name" {
    type = string
  
}

variable "backend_storage_account_name" {
  type = string
}

variable "backend_container_name" {
  type = string 
}

variable "nettverk_state_key" {
  type = string 
  description = "key-en til nettverks-stackens state, eks: dev/nettverk.tfstate"
}//App-stackens egen key settes ved init 
