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
  # --- Unconfirmed validation candidates, derived from azurerm_dev_test_virtual_network's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    ValidateDevTestVirtualNetworkName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: lab_name
  #   source:    validate.DevTestLabName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
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
  # path: subnet.use_in_virtual_machine_creation
  #   source:    validate.DevTestVirtualNetworkUsagePermissionType: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: subnet.use_public_ip_address
  #   source:    validate.DevTestVirtualNetworkUsagePermissionType: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: subnet.shared_public_ip_address.allowed_ports.transport_protocol
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

