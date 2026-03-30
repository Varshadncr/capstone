terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}

resource "snowflake_schema" "schema" {
  database = var.database
  name     = var.schema_name
}