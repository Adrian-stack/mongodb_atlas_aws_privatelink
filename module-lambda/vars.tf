variable "awsRegion" {
  description = "Name of the environment, uat, nonprod, prod the EC2 will launch in"
  type        = string
}

variable "environment" {
  description = "Name of the environment, uat, nonprod, prod the EC2 will launch in"
  type        = string
}

variable "createCount" {
  description = "Number of Lambda Functions to create with this profile. Defaults to 1"
  default     = 1
}

# Lambda
variable "lambda_function_name" {
  description = "Lambda Function Name. eg: fs-lambda-mongodb"
  type        = string
}

variable "lambda_source_file" {
  description = "Lambda Source file with code eg: *.py"
  type        = string
}

variable "lambda_source_dir" {
  description = "Lambda Source file with code eg: *.py"
  type        = string
}

variable "lambda_source_content" {
  description = "Lambda Source file with code eg: *.py"
  type        = string
}

variable "lambda_zip" {
  description = "Lambda archive file eg: *.zip"
  type        = string
}

variable "lambda_handler" {
  description = "Lambda handler eg: lambda_function_name.lambda_handler"
  type        = string
}

variable "lambda_runtime" {
  description = "Runtime language for the function"
  type        = string
}

variable "lambda_role_arn" {
  description = "Role ARN"
  type        = string
}

variable "lambda_timeout" {
  description = "Lambda timeout"
}

variable "lambda_memory_size" {
  description = "Lambda memory mb"
}

variable "subnet_ids" {
}

variable "security_group_ids" { 
}
