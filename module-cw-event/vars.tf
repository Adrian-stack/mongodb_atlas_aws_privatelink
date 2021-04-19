
variable "awsRegion" {
  description = "Name of the environment, uat, nonprod, prod the EC2 will launch in"
  type        = string
}

variable "environment" {
  description = "Name of the environment, uat, nonprod, prod the EC2 will launch in"
  type        = string
}

variable "cw_name" {
  description = "cloud watch event name"
  type        = string
}

variable "cw_role" {
  description = "Cloud Watch role to be able to trigger sfn"
  type        = string
}

variable "cw_timeadd" {
  description = "Cloud Watch extra time for the deploymnet to finish"
  type        = string
}

variable "sfn_name" {
  description = "Step Function name"
  type        = string
}

variable "sfn_arn" {
  description = "Step Function arn"
  type        = string
}