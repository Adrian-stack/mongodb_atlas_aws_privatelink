variable "awsRegion" {
  description = "The AWS Region the Subnet will be created in. Ex: eu-west-1, us-west-2"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Name of the environment the EC2 will launch in"
  type        = string
  default     = ""
}

variable "createCount" {
  description = "the number of MongoDB Shard Replicas to be created"
  default     = ""
}

variable "secrets_manager_endpoint" {
  description = "Name of the Secrets Manager VPC Endpoint"
  default     = ""
}

# Lambda
variable "lambda_function_name" {
  description = "Lambda Function Name. eg: lambda-secrets"
  type        = string
}

variable "lambda_zip" {
  description = "Lambda archive file eg: *.zip"
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

variable "atlas_hostname" {
  type = string
}

variable "atlas_connection_string" { 
}

variable "atlas_group_id" {
}

variable "atlas_port" {
}

variable "public_key" {
}

variable "private_key" {
}

variable "subnet_ids" {
}

variable "security_group_ids" { 
}