locals {
  hostname = format(
    "%s-%s%%02d",
    var.environment,
    var.lambda_function_name,
  )
}