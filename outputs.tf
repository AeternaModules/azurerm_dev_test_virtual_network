output "dev_test_virtual_networks_id" {
  description = "Map of id values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.id }
}
output "dev_test_virtual_networks_description" {
  description = "Map of description values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.description }
}
output "dev_test_virtual_networks_lab_name" {
  description = "Map of lab_name values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.lab_name }
}
output "dev_test_virtual_networks_name" {
  description = "Map of name values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.name }
}
output "dev_test_virtual_networks_resource_group_name" {
  description = "Map of resource_group_name values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.resource_group_name }
}
output "dev_test_virtual_networks_subnet" {
  description = "Map of subnet values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.subnet }
}
output "dev_test_virtual_networks_tags" {
  description = "Map of tags values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.tags }
}
output "dev_test_virtual_networks_unique_identifier" {
  description = "Map of unique_identifier values across all dev_test_virtual_networks, keyed the same as var.dev_test_virtual_networks"
  value       = { for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : k => v.unique_identifier }
}

