output "storage_folders_id" {
  description = "Map of id values across all storage_folders, keyed the same as var.storage_folders except keys with no id are omitted"
  value       = { for k, v in google_storage_folder.storage_folders : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_folders_bucket" {
  description = "Map of bucket values across all storage_folders, keyed the same as var.storage_folders except keys with no bucket are omitted"
  value       = { for k, v in google_storage_folder.storage_folders : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "storage_folders_create_time" {
  description = "Map of create_time values across all storage_folders, keyed the same as var.storage_folders except keys with no create_time are omitted"
  value       = { for k, v in google_storage_folder.storage_folders : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "storage_folders_deletion_policy" {
  description = "Map of deletion_policy values across all storage_folders, keyed the same as var.storage_folders except keys with no deletion_policy are omitted"
  value       = { for k, v in google_storage_folder.storage_folders : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "storage_folders_force_destroy" {
  description = "Map of force_destroy values across all storage_folders, keyed the same as var.storage_folders except keys with no force_destroy are omitted"
  value       = { for k, v in google_storage_folder.storage_folders : k => v.force_destroy if v.force_destroy != null }
}
output "storage_folders_metageneration" {
  description = "Map of metageneration values across all storage_folders, keyed the same as var.storage_folders except keys with no metageneration are omitted"
  value       = { for k, v in google_storage_folder.storage_folders : k => v.metageneration if v.metageneration != null && length(v.metageneration) > 0 }
}
output "storage_folders_name" {
  description = "Map of name values across all storage_folders, keyed the same as var.storage_folders except keys with no name are omitted"
  value       = { for k, v in google_storage_folder.storage_folders : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_folders_self_link" {
  description = "Map of self_link values across all storage_folders, keyed the same as var.storage_folders except keys with no self_link are omitted"
  value       = { for k, v in google_storage_folder.storage_folders : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "storage_folders_update_time" {
  description = "Map of update_time values across all storage_folders, keyed the same as var.storage_folders except keys with no update_time are omitted"
  value       = { for k, v in google_storage_folder.storage_folders : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

