variable "environment" {
  type = string

  validation {
    condition     = contains(["dev", "prod", "test"], var.environment)
    error_message = "enviroment må være dev, prod eller test"
  }
}


variable "location" {
  type    = string
  default = "norwayest"

  validation {
    condition     = contains(["northeurope", "uksouth", "westeurope", "norwayeast", "norwaywest", ], var.location)
    error_message = "Bare bruk regioner tillat i tenanten vår"
  }
}

variable "shortname" { //owner
  type = string
}

variable "projectmanagedby" {
  type = string

}

variable "project" {
  type    = string
  default = "oppg3"
}

variable "admin_username" {
  type        = string
  default     = "tfadmmin"
  description = "lokal administratorbruker på maskinen"
}

variable "admin_password" {
  type        = string
  sensitive   = true
  description = "settes med export TF_VAR_admin_password =, ikke i tfvars"
}

variable "vm_size" {
  type        = string
  description = "skal være mindre i dev enn i prod"
}


variable "subscription_id" {
  type = string

}


variable "address_space" {
  type = string
  //ingen default, fordi adresseplanen er en global beslutning

}

variable "subnets" {
  type        = map(number)
  description = "subnett i dette miljøet"

  default = {
    web  = 0
    app  = 1
    data = 2

  }
}

variable "vm_subnet_key" {
  type        = string
  default     = "data"
  description = "Nøkkelen til subnettet maskinen skal ligge i"
}