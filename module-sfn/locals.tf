locals {
  hostname = format(
    "%s-%s",
    var.environment,
    var.sfn_name,
  )
}