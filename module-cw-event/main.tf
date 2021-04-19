# Add 5 minutes to creation time
locals {
  utc_time = timeadd(timestamp(), var.cw_timeadd)
}

# Cloud Watch event rule
resource "aws_cloudwatch_event_rule" "cw_sfn" {
  name = local.hostname
  schedule_expression = format(
    "cron(%s %s %s %s ? %s)",
    substr(local.utc_time, 14, 2),
    substr(local.utc_time, 11, 2),
    substr(local.utc_time, 8, 2),
    substr(local.utc_time, 5, 2),
    substr(local.utc_time, 0, 4),
  )
}

# Cloud Watch event target
resource "aws_cloudwatch_event_target" "cw_sfn" {
  target_id = var.sfn_name
  rule      = aws_cloudwatch_event_rule.cw_sfn.name
  arn       = var.sfn_arn
  role_arn  = var.cw_role
  input     = replace(file("${path.module}/cw_sfn_input"), "\n", "")
}