locals {
  company  = var.company
  rgprefix = "${var.company}-${var.project}-${var.enviroment}"
  saprefix = "${var.company}${var.project}${var.enviroment}"

  common_tags = {
    environment = var.enviroment
    owner       = var.owner
    project     = var.project
    costcenter  = var.costcenter
  }
}