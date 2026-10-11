data "ovh_cloud_project_network_privates" "cloud_project_network_privates_lookup" {
  for_each = var.cloud_project_network_privates_lookup

  service_name = each.value.service_name
}

