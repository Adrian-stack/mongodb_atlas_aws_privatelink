//Creates cw event
module "cw_event" {
  source               = "../../module-cw-event"
  awsRegion            = var.awsRegion
  environment          = var.environment
  cw_name              = "cw-event"
  cw_timeadd           = "3m"
  cw_role              = module.iam.cw_role
  sfn_name             = module.sfn.sfn_name
  sfn_arn              = module.sfn.sfn_arn
}