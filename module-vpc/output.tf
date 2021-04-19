output "vpc_id" {
    value = aws_vpc.test.id
}

output "subnet_id" {
    value = aws_subnet.main-private.id
}

output "aws_security_id" {
    value = aws_security_group.atlas.id
}

# output "lambda_role" {
#     value = aws_iam_role.iam_for_lambda.arn
# }