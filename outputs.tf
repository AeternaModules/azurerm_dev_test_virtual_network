output "dev_test_virtual_networks_id" {
  description = "Map of id values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dev_test_virtual_networks_description" {
  description = "Map of description values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dev_test_virtual_networks_lab_name" {
  description = "Map of lab_name values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.lab_name if v.lab_name != null && length(v.lab_name) > 0 }
}
output "dev_test_virtual_networks_name" {
  description = "Map of name values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dev_test_virtual_networks_resource_group_name" {
  description = "Map of resource_group_name values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "dev_test_virtual_networks_subnet" {
  description = "Map of subnet values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.subnet if v.subnet != null && length(v.subnet) > 0 }
}
output "dev_test_virtual_networks_tags" {
  description = "Map of tags values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "dev_test_virtual_networks_unique_identifier" {
  description = "Map of unique_identifier values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.unique_identifier if v.unique_identifier != null && length(v.unique_identifier) > 0 }
}

