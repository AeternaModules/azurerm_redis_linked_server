output "redis_linked_servers_id" {
  description = "Map of id values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redis_linked_servers_geo_replicated_primary_host_name" {
  description = "Map of geo_replicated_primary_host_name values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.geo_replicated_primary_host_name if v.geo_replicated_primary_host_name != null && length(v.geo_replicated_primary_host_name) > 0 }
}
output "redis_linked_servers_linked_redis_cache_id" {
  description = "Map of linked_redis_cache_id values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.linked_redis_cache_id if v.linked_redis_cache_id != null && length(v.linked_redis_cache_id) > 0 }
}
output "redis_linked_servers_linked_redis_cache_location" {
  description = "Map of linked_redis_cache_location values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.linked_redis_cache_location if v.linked_redis_cache_location != null && length(v.linked_redis_cache_location) > 0 }
}
output "redis_linked_servers_name" {
  description = "Map of name values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "redis_linked_servers_resource_group_name" {
  description = "Map of resource_group_name values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "redis_linked_servers_server_role" {
  description = "Map of server_role values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.server_role if v.server_role != null && length(v.server_role) > 0 }
}
output "redis_linked_servers_target_redis_cache_name" {
  description = "Map of target_redis_cache_name values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.target_redis_cache_name if v.target_redis_cache_name != null && length(v.target_redis_cache_name) > 0 }
}

