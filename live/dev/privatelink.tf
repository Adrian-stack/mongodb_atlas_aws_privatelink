module "privatelink" {
    source             = "../../module-privatelink"
    vpc_id             = module.vpc.vpc_id
    subnet_ids         = module.vpc.subnet_id
    security_group_ids = module.vpc.aws_security_id
    project_id         = module.project.project_id
    region             = var.awsRegion
}