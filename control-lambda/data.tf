data "template_file" "lambda" {
  template = file("${path.module}/${var.lambda_source_file}")

  vars = {
    environment              = var.environment
    atlas_hostname           = var.atlas_hostname
    atlas_port               = var.atlas_port
    atlas_connection_string  = var.atlas_connection_string
    atlas_group_id           = var.atlas_group_id
    public_key               = var.public_key
    private_key              = var.private_key
  }
}