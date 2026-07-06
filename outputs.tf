output "redis_linked_servers" {
  description = "All redis_linked_server resources"
  value       = azurerm_redis_linked_server.redis_linked_servers
}
output "redis_linked_servers_geo_replicated_primary_host_name" {
  description = "List of geo_replicated_primary_host_name values across all redis_linked_servers"
  value       = [for k, v in azurerm_redis_linked_server.redis_linked_servers : v.geo_replicated_primary_host_name]
}
output "redis_linked_servers_linked_redis_cache_id" {
  description = "List of linked_redis_cache_id values across all redis_linked_servers"
  value       = [for k, v in azurerm_redis_linked_server.redis_linked_servers : v.linked_redis_cache_id]
}
output "redis_linked_servers_linked_redis_cache_location" {
  description = "List of linked_redis_cache_location values across all redis_linked_servers"
  value       = [for k, v in azurerm_redis_linked_server.redis_linked_servers : v.linked_redis_cache_location]
}
output "redis_linked_servers_name" {
  description = "List of name values across all redis_linked_servers"
  value       = [for k, v in azurerm_redis_linked_server.redis_linked_servers : v.name]
}
output "redis_linked_servers_resource_group_name" {
  description = "List of resource_group_name values across all redis_linked_servers"
  value       = [for k, v in azurerm_redis_linked_server.redis_linked_servers : v.resource_group_name]
}
output "redis_linked_servers_server_role" {
  description = "List of server_role values across all redis_linked_servers"
  value       = [for k, v in azurerm_redis_linked_server.redis_linked_servers : v.server_role]
}
output "redis_linked_servers_target_redis_cache_name" {
  description = "List of target_redis_cache_name values across all redis_linked_servers"
  value       = [for k, v in azurerm_redis_linked_server.redis_linked_servers : v.target_redis_cache_name]
}

