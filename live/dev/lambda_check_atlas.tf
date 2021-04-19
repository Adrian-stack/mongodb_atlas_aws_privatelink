module "lambda_check" {
  source               = "../../control-lambda"
  awsRegion            = var.awsRegion
  environment          = var.environment
  createCount          = 1

  //lambda
  subnet_ids               = [module.vpc.subnet_id]
  security_group_ids       = [module.vpc.aws_security_id]
  lambda_function_name     = "lambda-atlas-check"
  lambda_zip               = "lambda-atlas-check.zip"
  lambda_source_file       = "lambda-atlas-check.py"
  lambda_source_dir        = "lambdasrc2"
  lambda_handler           = "lambda_handler"
  lambda_runtime           = "python3.7"
  lambda_timeout           = 10
  lambda_memory_size       = 128
  lambda_role_arn          = module.iam.lambda_role

  //atlas
  public_key               = var.mongodbatlas_public_key
  private_key              = var.mongodbatlas_private_key
  atlas_connection_string  = module.atlas.connection_string_uri
  atlas_group_id           = module.project.project_id
  atlas_hostname           = element(module.atlas.hostname, 0)
  atlas_port               = module.atlas.port
}