  resource "mongodbatlas_maintenance_window" "test" {
    project_id  = var.project_id
    day_of_week = 1
    hour_of_day = 4
  }