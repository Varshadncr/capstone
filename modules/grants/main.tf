terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "warehouse_grant" {
  privileges = ["USAGE"]

  account_role_name = var.role_name

  on_account_object {
    object_type = "WAREHOUSE"
    object_name = var.warehouse_name
  }
}