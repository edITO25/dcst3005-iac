variable "project" {
  type = string
}

variable "environment" {
  type        = string
  description = "kommer fra parameterfila"

  validation {
    condition     = contains(["prod", "dev", "test", ], var.environment)
    error_message = "Bare bruk prod, dev eller test"
  }
}

variable "shortname" {
  type = string

}


variable "location" {
  type = string

  validation {
    condition     = contains(["northeurope", "uksouth", "westeurope", "norwayeast", "norwaywest", ], var.location)
    error_message = "Bare bruk regioner tillat i tenanten vår"
  }
}

variable "subnets" {
  type        = map(number)
  description = "subnetnavn => netum (subnettadressen)."
}

variable "address_space" {
  type        = string
  description = "Adresserommet miljøet disponerer"
}