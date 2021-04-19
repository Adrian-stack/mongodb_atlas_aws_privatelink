resource "mongodbatlas_database_user" "test" {
  username           = "admin"
  password           = "admin"
  project_id         = var.project_id
  auth_database_name = "admin"

  roles {
    role_name     = "atlasAdmin"
    database_name = "admin"
  }
}