// Step Function
resource "aws_sfn_state_machine" "main" {
  name       = local.hostname
  role_arn   = var.sfn_role
  definition = data.template_file.main.rendered
}
