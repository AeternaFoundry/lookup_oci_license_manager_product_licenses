output "license_manager_product_licenses_lookup_id" {
  description = "Map of id values across all license_manager_product_licenses_lookup, keyed the same as var.license_manager_product_licenses_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_license_manager_product_licenses.license_manager_product_licenses_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "license_manager_product_licenses_lookup_compartment_id" {
  description = "Map of compartment_id values across all license_manager_product_licenses_lookup, keyed the same as var.license_manager_product_licenses_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_license_manager_product_licenses.license_manager_product_licenses_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "license_manager_product_licenses_lookup_filter" {
  description = "Map of filter values across all license_manager_product_licenses_lookup, keyed the same as var.license_manager_product_licenses_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_license_manager_product_licenses.license_manager_product_licenses_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "license_manager_product_licenses_lookup_is_compartment_id_in_subtree" {
  description = "Map of is_compartment_id_in_subtree values across all license_manager_product_licenses_lookup, keyed the same as var.license_manager_product_licenses_lookup except keys with no is_compartment_id_in_subtree are omitted"
  value       = { for k, v in data.oci_license_manager_product_licenses.license_manager_product_licenses_lookup : k => v.is_compartment_id_in_subtree if v.is_compartment_id_in_subtree != null }
}
output "license_manager_product_licenses_lookup_product_license_collection" {
  description = "Map of product_license_collection values across all license_manager_product_licenses_lookup, keyed the same as var.license_manager_product_licenses_lookup except keys with no product_license_collection are omitted"
  value       = { for k, v in data.oci_license_manager_product_licenses.license_manager_product_licenses_lookup : k => v.product_license_collection if v.product_license_collection != null && length(v.product_license_collection) > 0 }
}

