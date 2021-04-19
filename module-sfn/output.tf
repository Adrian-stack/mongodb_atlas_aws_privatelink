output "sfn_name" {
  value = aws_sfn_state_machine.main.name
}

output "sfn_arn" {
  value = aws_sfn_state_machine.main.id
}