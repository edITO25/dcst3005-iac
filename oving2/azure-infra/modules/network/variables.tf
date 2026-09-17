//rg_name og location må komme utenfra
variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type    = string
  default = "vnet-tf-demo-01"
}

variable "nsg_name" {
  type    = string
  default = "nsg-tf-demo"
}

variable "subnet_name" {
  type    = string
  default = "snet-tf-demo-001"
}

variable "subnet_names" {
  type        = list(string)
  description = "Navnene på subnettene som skal opprettes"
  default     = ["web", "app", "data"]
}

variable "subnets" {
  type        = map(string)
  description = "Subnett som skal opprettes: navn => adresseprefiks"

  default = {
    web  = "10.0.1.0/24"
    app  = "10.0.2.0/24"
    data = "10.0.3.0/24"
  }
}

variable "address_space" {
  type        = string
  description = "Adresserommet vnet-et disponerer, som CIDR – for eksempel 10.10.0.0/16"
}