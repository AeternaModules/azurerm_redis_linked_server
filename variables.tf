variable "redis_linked_servers" {
  description = <<EOT
Map of redis_linked_servers, attributes below
Required:
    - linked_redis_cache_id
    - linked_redis_cache_location
    - resource_group_name
    - server_role
    - target_redis_cache_name
EOT

  type = map(object({
    linked_redis_cache_id       = string
    linked_redis_cache_location = string
    resource_group_name         = string
    server_role                 = string
    target_redis_cache_name     = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.redis_linked_servers : (
        length(v.target_redis_cache_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_linked_servers : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_linked_servers : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_linked_servers : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

