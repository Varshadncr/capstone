resource "snowflake_grant_account_role" "grant_role_to_user" {

  role_name = var.role_name
  user_name = var.user_name

}
