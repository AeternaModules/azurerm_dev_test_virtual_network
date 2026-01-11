variable "dev_test_virtual_networks" {
  description = <<EOT
Map of dev_test_virtual_networks, attributes below
Required:
    - lab_name
    - name
    - resource_group_name
Optional:
    - description
    - tags
    - subnet (block):
        - shared_public_ip_address (optional, block):
            - allowed_ports (optional, block):
                - backend_port (optional)
                - transport_protocol (optional)
        - use_in_virtual_machine_creation (optional)
        - use_public_ip_address (optional)
EOT

  type = map(object({
    lab_name            = string
    name                = string
    resource_group_name = string
    description         = optional(string)
    tags                = optional(map(string))
    subnet = optional(object({
      shared_public_ip_address = optional(object({
        allowed_ports = optional(object({
          backend_port       = optional(number)
          transport_protocol = optional(string)
        }))
      }))
      use_in_virtual_machine_creation = optional(string, "Allow")
      use_public_ip_address           = optional(string, "Allow")
    }))
  }))
}

