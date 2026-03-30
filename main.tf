# ---------------- Warehouses ----------------

module "compute_wh" {
  source = "./modules/warehouse"

  name = "${var.environment}_COMPUTE_WH"
  size = var.warehouse_size
}

module "analytics_wh" {
  source = "./modules/warehouse"

  name = "ANALYTICS_WH"
  size = "SMALL"
}

# ---------------- Databases ----------------

module "sales_db" {
  source = "./modules/database"

  name = "${var.environment}_${var.database_name}"
}

module "hr_db" {
  source = "./modules/database"

  name = "HR_DB"
}

# ---------------- Schemas ----------------

module "sales_schema" {
  source = "./modules/schema"

  database    = module.sales_db.database_name
  schema_name = "SALES_SCHEMA"
}

module "hr_schema" {
  source = "./modules/schema"

  database    = module.hr_db.database_name
  schema_name = "HR_SCHEMA"
}

# ---------------- Roles ----------------

module "sysadmin_custom_role" {
  source    = "./modules/role"
  role_name = "SYSADMIN_CUSTOM"
}

module "data_engineer_role" {
  source    = "./modules/role"
  role_name = "DATA_ENGINEER"
}

module "data_analyst_role" {
  source    = "./modules/role"
  role_name = "DATA_ANALYST"
}

# ---------------- Grants ----------------

module "engineer_wh_grant" {
  source = "./modules/grants"

  warehouse_name = module.compute_wh.warehouse_name
  role_name      = module.data_engineer_role.role_name
}

module "analyst_wh_grant" {
  source = "./modules/grants"

  warehouse_name = module.analytics_wh.warehouse_name
  role_name      = module.data_analyst_role.role_name
}