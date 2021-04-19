variable "awsRegion" {
  description = "Region to place all resources"
}

variable "environment" {
  description = "Name of the environment such as 'dev', 'qa', etc"
}

variable "mongodbatlas_public_key" {
}

variable "mongodbatlas_private_key" {
}

variable "organization_id" {
}

variable "project_name" {
}

variable "cluster_type" {
}

variable "cidr_block" {
}

variable "dmz_block" {
}
