variable "database_name" {
  description = "Database name"
  type        = string
}

variable "schema_name" {
  description = "Schema name"
  type        = string
}

variable "tables" {
  description = "List of tables"
  type        = list(string)
}
