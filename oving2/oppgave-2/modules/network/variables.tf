//rg_name og location må komme utenfra
variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type    = string
  default = "vnet-tf"
}


variable "subnet_name" {
  type    = string
  default = "snet-tf"
}

variable "common_tags" {
  type = map(string)
}

variable "address_space" {
  type        = string
  description = "Adresserommet vnet-et disponerer"
}
