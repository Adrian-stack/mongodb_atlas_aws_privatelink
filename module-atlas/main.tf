resource "mongodbatlas_cluster" "cluster-test" {
  project_id   = var.project_id
  name         = var.name
  cluster_type = var.cluster_type
  replication_specs {
    num_shards = var.num_shards
    regions_config {
      region_name     = var.region_name
      electable_nodes = var.electable_nodes
      priority        = var.priority
      read_only_nodes = var.read_only_nodes
    }
  }
  mongo_db_major_version                  = var.mongo_db_major_version
  auto_scaling_disk_gb_enabled            = var.auto_scaling_disk_gb_enabled
  auto_scaling_compute_enabled            = var.auto_scaling_compute_enabled
  auto_scaling_compute_scale_down_enabled = var.auto_scaling_compute_scale_down_enabled
  
  //Provider Settings "block"
  provider_name                                   = var.provider_name
  disk_size_gb                                    = var.disk_size_gb
  provider_disk_iops                              = var.provider_disk_iops
  provider_volume_type                            = var.provider_volume_type
  provider_backup_enabled                         = var.provider_backup_enabled
  provider_encrypt_ebs_volume                     = var.provider_encrypt_ebs_volume
  provider_instance_size_name                     = var.provider_instance_size_name
  provider_auto_scaling_compute_max_instance_size = var.provider_auto_scaling_compute_max_instance_size
  provider_auto_scaling_compute_min_instance_size = var.provider_auto_scaling_compute_min_instance_size
}