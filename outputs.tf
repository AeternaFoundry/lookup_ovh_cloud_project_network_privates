output "cloud_project_network_privates_lookup_networks" {
  description = "Map of networks values across all cloud_project_network_privates_lookup, keyed the same as var.cloud_project_network_privates_lookup except keys with no networks are omitted"
  value       = { for k, v in data.ovh_cloud_project_network_privates.cloud_project_network_privates_lookup : k => v.networks if v.networks != null && length(v.networks) > 0 }
}
output "cloud_project_network_privates_lookup_service_name" {
  description = "Map of service_name values across all cloud_project_network_privates_lookup, keyed the same as var.cloud_project_network_privates_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_project_network_privates.cloud_project_network_privates_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

