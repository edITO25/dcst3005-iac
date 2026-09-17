locals {
  base_name = lower(format("%s-%s-%s", var.project, var.environment, var.shortname))

  tags = {
    environment = var.environment
    shortname   = var.shortname
    project     = var.project
    managedby   = var.projectmanagedby

  }

}



