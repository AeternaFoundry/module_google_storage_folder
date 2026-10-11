resource "google_storage_folder" "storage_folders" {
  for_each = var.storage_folders

  bucket          = each.value.bucket
  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  force_destroy   = each.value.force_destroy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

