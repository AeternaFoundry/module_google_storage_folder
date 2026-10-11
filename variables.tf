variable "storage_folders" {
  description = <<EOT
Map of storage_folders, attributes below
Required:
    - bucket
    - name
Optional:
    - deletion_policy
    - force_destroy
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    bucket          = string
    name            = string
    deletion_policy = optional(string)
    force_destroy   = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

