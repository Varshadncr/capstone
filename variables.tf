# ---------------- Environment ----------------

variable "environment" {
  description = "Environment name (dev/qa/prod)"
  type        = string
}

# ---------------- Warehouse ----------------

variable "warehouse_size" {
  description = "Size of the Snowflake warehouse"
  type        = string
}

# ---------------- Database ----------------

variable "database_name" {
  description = "Database name"
  type        = string
}

# ---------------- Snowflake Provider Credentials ----------------

variable "account" {
  description = "Snowflake account identifier"
  type        = string
}

variable "user" {
  description = "Snowflake username"
  type        = string
}

variable "password" {
  description = "Snowflake password"
  type        = string
  sensitive   = true
}

variable "role" {
  description = "Snowflake role used to create resources"
  type        = string
}
