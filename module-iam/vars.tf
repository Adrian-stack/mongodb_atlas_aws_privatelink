variable "awsRegion" {
  description = "The AWS Region the Subnet will be created in. Ex: eu-west-1, us-west-2"
  type        = string
}

variable "environment" {
  description = "Name of the environment, uat, nonprod, prod the EC2 will launch in"
  type        = string
}