output "table_names" {
  description = "Names of created tables"
  value       = [for t in snowflake_table.table : t.name]
}

