resource "mongodbatlas_privatelink_endpoint" "test" {
  project_id    = var.project_id
  provider_name = "AWS"
  region        = var.region
}

resource "aws_vpc_endpoint" "ptfe_service" {
  vpc_id             = var.vpc_id
  service_name       = mongodbatlas_privatelink_endpoint.test.endpoint_service_name
  vpc_endpoint_type  = "Interface"
  subnet_ids         = [var.subnet_ids]
  security_group_ids = [var.security_group_ids]
}

resource "mongodbatlas_privatelink_endpoint_service" "test" {
  project_id            = mongodbatlas_privatelink_endpoint.test.project_id
  private_link_id       = mongodbatlas_privatelink_endpoint.test.private_link_id
  endpoint_service_id   = aws_vpc_endpoint.ptfe_service.id
  provider_name         = "AWS"
}