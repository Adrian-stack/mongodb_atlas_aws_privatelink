output "atlas-lambda-function-arn" {
    value = aws_lambda_function.main.*.arn
}
