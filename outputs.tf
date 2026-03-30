output "sales_database" {
  value = module.sales_db.database_name
}

output "compute_warehouse" {
  value = module.compute_wh.warehouse_name
}

output "analytics_warehouse" {
  value = module.analytics_wh.warehouse_name
}

output "data_engineer_role" {
  value = module.data_engineer_role.role_name
}