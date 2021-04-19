resource "mongodbatlas_cloud_provider_snapshot_backup_policy" "test" {
  project_id   = var.project_id
  cluster_name = var.name

  reference_hour_of_day       = 6
  reference_minute_of_hour    = 0
  update_snapshots            = false 

  //Keep all 4 default policies but modify the units and values
  //Could also just reflect the policy defaults here for later management
  policies {
    id = mongodbatlas_cluster.cluster-test.snapshot_backup_policy.0.policies.0.id

    policy_item {
      id                 = mongodbatlas_cluster.cluster-test.snapshot_backup_policy.0.policies.0.policy_item.0.id
      frequency_interval = 6
      frequency_type     = "hourly"
      retention_unit     = "days"
      retention_value    = 2
    }

    policy_item {
      id                 = mongodbatlas_cluster.cluster-test.snapshot_backup_policy.0.policies.0.policy_item.1.id
      frequency_interval = 1
      frequency_type     = "daily"
      retention_unit     = "days"
      retention_value    = 3
    }

    policy_item {
      id                 = mongodbatlas_cluster.cluster-test.snapshot_backup_policy.0.policies.0.policy_item.2.id
      frequency_interval = 4
      frequency_type     = "weekly"
      retention_unit     = "weeks"
      retention_value    = 2
    }

    policy_item {
      id                 = mongodbatlas_cluster.cluster-test.snapshot_backup_policy.0.policies.0.policy_item.3.id
      frequency_interval = 5
      frequency_type     = "monthly"
      retention_unit     = "months"
      retention_value    = 1
    }
  }
}