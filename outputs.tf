output "redis_linked_servers_id" {
  description = "Map of id values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.id }
}
output "redis_linked_servers_geo_replicated_primary_host_name" {
  description = "Map of geo_replicated_primary_host_name values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.geo_replicated_primary_host_name }
}
output "redis_linked_servers_linked_redis_cache_id" {
  description = "Map of linked_redis_cache_id values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.linked_redis_cache_id }
}
output "redis_linked_servers_linked_redis_cache_location" {
  description = "Map of linked_redis_cache_location values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.linked_redis_cache_location }
}
output "redis_linked_servers_name" {
  description = "Map of name values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.name }
}
output "redis_linked_servers_resource_group_name" {
  description = "Map of resource_group_name values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.resource_group_name }
}
output "redis_linked_servers_server_role" {
  description = "Map of server_role values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.server_role }
}
output "redis_linked_servers_target_redis_cache_name" {
  description = "Map of target_redis_cache_name values across all redis_linked_servers, keyed the same as var.redis_linked_servers"
  value       = { for k, v in azurerm_redis_linked_server.redis_linked_servers : k => v.target_redis_cache_name }
}

