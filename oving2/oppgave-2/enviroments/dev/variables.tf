variable "environment" {
  type = string
}

variable "rg_base_name" {
  type = string
}

variable "vnet_base_name" {
  type = string
}

variable "subnet_base_name" {
  type = string
}

variable "vm_base_name" {
  type = string
}

variable "location" {
  type = string
}

variable "owner" {
  type = string
}

variable "managedby" {
  type = string

}

variable "nic_base_name" {
  type = string
}

variable "admin_username" {
  type    = string
  default = "SkalEgentligIkkeHer"
}

variable "admin_password" {
  type    = string
  default = "SkalEgentligIkke123"
}

variable "vm_size" {
  type = string
}


variable "subscription_id" {
  type = string

}

variable "address_space" {
  type = string 
}