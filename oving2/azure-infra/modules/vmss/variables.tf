variable "subnet_id" {
  type        = string
  default     = ""
  description = "ID-en til subnet-et VM-ene skal kobles på"
}

//default er tom med vilje
//Den kommer fra nettverksmodulen 

variable "vmss_name" {
  type    = string
  default = "vmssdemo"
}

variable "rg_name" {
  type    = string
  default = "rg-tf-demo"
}

variable "location" {
  type    = string
  default = "West Europe"
}
