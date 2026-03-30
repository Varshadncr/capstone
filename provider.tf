terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 0.100"
    }
  }
}

provider "snowflake" {
  account  = var.account
  user     = var.user
  password = var.password
  role     = var.role
}
