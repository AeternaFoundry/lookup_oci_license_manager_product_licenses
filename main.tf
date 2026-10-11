data "oci_license_manager_product_licenses" "license_manager_product_licenses_lookup" {
  for_each = var.license_manager_product_licenses_lookup

  compartment_id               = each.value.compartment_id
  is_compartment_id_in_subtree = each.value.is_compartment_id_in_subtree

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

