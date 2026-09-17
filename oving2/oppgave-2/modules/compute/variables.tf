variable "nic_name" {
  type = string
}

variable "location" {
  type    = string
}

variable "rg_name" {
  type    = string
}


variable "subnet_id" {
  type        = string
  default     = ""
  description = "ID-en til subnet-et VM-ene skal kobles på"
}

//default er tom med vilje
//Den kommer fra nettverksmodulen 


variable "vm_name" {
  type = string
}


variable "vm_size" {
  type = string
}


variable "admin_username" {
  type = string
}

variable "admin_password" {
  type      = string
  sensitive = true
}


variable "common_tags" {
  type = map(string)
}

