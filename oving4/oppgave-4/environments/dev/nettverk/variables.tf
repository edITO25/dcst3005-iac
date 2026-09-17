variable "subscription_id" {
  type    = string
  default = null
}

variable "project" {
  type = string
}

variable "environment" {
  type = string

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
  type    = map(number)
  default = {}
}

variable "address_space" {
  type = string
}