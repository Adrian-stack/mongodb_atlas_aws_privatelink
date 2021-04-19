data "template_file" "main" {
  template = file("${path.module}/${var.sfn_template}")

  vars = {
    atlas-check-function-arn  = var.atlas-check-function-arn
    config-atlas-function-arn = var.config-atlas-function-arn
  }
}