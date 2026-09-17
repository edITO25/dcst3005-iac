variable "rg_name" {
  type    = string
  default = "rg-tf-demo"
}

variable "sa_name" {
  type    = string
  default = "stterraformdemo"
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "mssql_name" {
  type    = string
  default = "sql-tf-demo-001"
}

variable "mssql_db_name" {
  type    = string
  default = "sqldb-tf-demo"
}