
//Ingen defaults på verdier som skiller miljøene fra hverandre
//De skal settes bevisst per miljø 

variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "base_name" {
  type = string
}

variable "address_space" {
  type = string
}

variable "subnets" {
  type = map(number)


}

variable "subnet_newbits" {
  type    = number
  default = 8
}

variable "vm_subnet_key" {
  type    = string
  default = "app"

}

variable "tags" {
  type    = map(string)
  default = {}
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


