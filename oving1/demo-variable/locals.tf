locals {
  company  = var.company
  rgprefix = "${var.company}-${var.project}-${var.environment}"
  saprefix = "${var.company}${var.project}${var.environment}"

  common_tags = {
    environment = var.environment
    owner       = var.owner
    project     = var.project
    costcenter  = var.costcenter
  }
}