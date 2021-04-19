module "project" {
    source = "../../module-project"

    project_name    = var.project_name
    organization_id = var.organization_id
    
}