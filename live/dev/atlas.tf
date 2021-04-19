module "atlas" {
    source = "../../module-atlas"

    project_id   = module.project.project_id
    name         = var.environment
    cluster_type = var.cluster_type

    # Replication specs
    num_shards      = 1
    region_name     = "EU_WEST_1"
    electable_nodes = 3
    priority        = 7
    read_only_nodes = 0
    
    # Auto scalling, versioning
    mongo_db_major_version                  = "4.4"
    auto_scaling_disk_gb_enabled            = true
    auto_scaling_compute_enabled            = true
    auto_scaling_compute_scale_down_enabled = true

    # Provider settings "block"
    provider_name                                   = "AWS"
    disk_size_gb                                    = 10
    provider_disk_iops                              = 100
    provider_volume_type                            = "STANDARD"
    provider_backup_enabled                         = true
    provider_encrypt_ebs_volume                     = true
    provider_instance_size_name                     = "M10"
    provider_auto_scaling_compute_max_instance_size = "M40"
    provider_auto_scaling_compute_min_instance_size = "M10"
}
