resource "snowflake_table" "table" {
  for_each = toset(var.tables)

  database = var.database_name
  schema   = var.schema_name
  name     = each.value

  column {
    name = "ID"
    type = "NUMBER(38, 0)"
  }

  column {
    name = "NAME"
    type = "STRING(16777216)"
  }

  column {
    name = "CREATED_AT"
    type = "TIMESTAMP_NTZ(9)"
  }
}

