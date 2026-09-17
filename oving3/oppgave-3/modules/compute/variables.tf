
variable "location" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "base_name" {
  type = string
}

variable "subnet_id" {
  type        = string
  description = "ID-en til subnet-et VM-ene skal kobles på"
}

//default er tom med vilje
//Den kommer fra nettverksmodulen 


variable "vm_size" {
  type = string

  validation {
    condition = contains(["Standard_B2als_v2", "Standard_B2as_v2", "Standard_B4als_v2", "Standard_B4as_v2",
      "Standard_D2s_v5", "Standard_D4s_v5", "Standard_D2s_v6", "Standard_D4s_v6",
    "Standard_E2s_v5", "Standard_E4s_v5", "Standard_E2s_v6", "Standard_E4s_v6"], var.vm_size)
    error_message = "vm-size må være en av de tillate i tenanten vår"
  }
}


variable "admin_username" {
  type = string
}

variable "admin_password" {
  type      = string
  sensitive = true

  validation {
    condition     = length(var.admin_password) >= 12
    error_message = "Passord har for få karakterer, Azure krever minst 12 tegn"

  }
}


variable "tags" {
  type    = map(string)
  default = {}
}

