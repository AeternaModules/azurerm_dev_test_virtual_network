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
        allowed_ports = optional(list(object({
          backend_port       = optional(number)
          transport_protocol = optional(string)
        })))
      }))
      use_in_virtual_machine_creation = optional(string)
      use_public_ip_address           = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dev_test_virtual_networks : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_virtual_networks : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_virtual_networks : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_virtual_networks : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

