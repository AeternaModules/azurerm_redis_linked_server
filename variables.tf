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
  # --- Unconfirmed validation candidates, derived from azurerm_redis_linked_server's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: linked_redis_cache_id
  #   source:    [from linkedserver.ValidateRediID] !ok
  # path: linked_redis_cache_id
  #   source:    [from linkedserver.ValidateRediID] err != nil
  # path: linked_redis_cache_location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: server_role
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

