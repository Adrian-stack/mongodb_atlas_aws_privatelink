variable "project_id" {
}

variable "name" {
}

variable "cluster_type" {
}

 # Replication specs
variable "num_shards" {
}

variable "region_name" {
}

variable "electable_nodes" {
}

variable "priority" {
}

variable "read_only_nodes" {
}

# Auto scalling, versioning
variable "mongo_db_major_version" {
}

variable "auto_scaling_disk_gb_enabled" {
}

variable "auto_scaling_compute_enabled" { 
}

variable "auto_scaling_compute_scale_down_enabled" { 
}

# Provider settings "block"
variable "provider_name" {
}

variable "disk_size_gb" {
}

variable "provider_disk_iops" {
}

variable "provider_volume_type" {  
}

variable "provider_backup_enabled" {
}

variable "provider_encrypt_ebs_volume" {
}

variable "provider_instance_size_name" {
}

variable "provider_auto_scaling_compute_max_instance_size" {
}

variable "provider_auto_scaling_compute_min_instance_size" {
}