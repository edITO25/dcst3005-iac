variable "shortname" {
  type = string
}

variable "location" {
  type = string
}

variable "subscription_id" {
  type        = string
  default     = null
  description = "Settes bare hvis du har flere subscriptions, står den som null, brukes ARM_SUBSCRIPTION_ID eller den aktive subscriptionen fra az account show"
}

