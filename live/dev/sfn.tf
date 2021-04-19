//Creates sfn state
module "sfn" {
  source                      = "../../module-sfn"
  awsRegion                   = var.awsRegion
  environment                 = var.environment
  sfn_name                    = "sfn"
  sfn_template                = "definitionTemplate.json"
  sfn_role                    = module.iam.sfn_role
  atlas-check-function-arn    = element(module.lambda_check.lambda-function-arn, 0)
  config-atlas-function-arn   = element(module.lambda_config.lambda-function-arn, 0)
}