variable "awsRegion" {
  description = "Name of the environment, uat, nonprod, prod the EC2 will launch in"
  type        = string
}

variable "environment" {
  description = "Name of the environment, uat, nonprod, prod the EC2 will launch in"
  type        = string
}

variable "sfn_template" {
  description = "Step Function definition template"
  type        = string
}

variable "sfn_role" {
  description = "Step Function role"
  type        = string
}

variable "sfn_name" {
  description = "Step Function name"
  type        = string
}

variable "atlas-check-function-arn" {
  description = "ARN of the lambda"
  type        = string
}

variable "config-atlas-function-arn" {
  description = "ARN of the lambda"
  type        = string
}