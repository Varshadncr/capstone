terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}

resource "snowflake_warehouse" "warehouse" {
  name           = var.name
  warehouse_size = var.size

  auto_suspend = 60
  auto_resume  = true
}