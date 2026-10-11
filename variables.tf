variable "license_manager_product_licenses_lookup" {
  description = <<EOT
Map of license_manager_product_licenses_lookup, attributes below
Required:
    - compartment_id
Optional:
    - is_compartment_id_in_subtree
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id               = string
    is_compartment_id_in_subtree = optional(bool)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

