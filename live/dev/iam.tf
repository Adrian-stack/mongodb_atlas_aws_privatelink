module "iam" {
  source      = "../../module-iam"
  awsRegion   = var.awsRegion
  environment = var.environment
}