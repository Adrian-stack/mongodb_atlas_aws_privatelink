locals {
  hostname = format(
    "%s-%s",
    var.environment,
    var.cw_name,
  )
}