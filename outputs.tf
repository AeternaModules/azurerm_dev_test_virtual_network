output "dev_test_virtual_networks" {
  description = "All dev_test_virtual_network resources"
  value       = azurerm_dev_test_virtual_network.dev_test_virtual_networks
}
output "dev_test_virtual_networks_description" {
  description = "List of description values across all dev_test_virtual_networks"
  value       = [for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : v.description]
}
output "dev_test_virtual_networks_lab_name" {
  description = "List of lab_name values across all dev_test_virtual_networks"
  value       = [for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : v.lab_name]
}
output "dev_test_virtual_networks_name" {
  description = "List of name values across all dev_test_virtual_networks"
  value       = [for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : v.name]
}
output "dev_test_virtual_networks_resource_group_name" {
  description = "List of resource_group_name values across all dev_test_virtual_networks"
  value       = [for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : v.resource_group_name]
}
output "dev_test_virtual_networks_subnet" {
  description = "List of subnet values across all dev_test_virtual_networks"
  value       = [for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : v.subnet]
}
output "dev_test_virtual_networks_tags" {
  description = "List of tags values across all dev_test_virtual_networks"
  value       = [for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : v.tags]
}
output "dev_test_virtual_networks_unique_identifier" {
  description = "List of unique_identifier values across all dev_test_virtual_networks"
  value       = [for k, v in azurerm_dev_test_virtual_network.dev_test_virtual_networks : v.unique_identifier]
}

