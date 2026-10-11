output "regions_lookup_id" {
  description = "Map of id values across all regions_lookup, keyed the same as var.regions_lookup"
  value       = { for k, v in data.aws_regions.regions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "regions_lookup_all_regions" {
  description = "Map of all_regions values across all regions_lookup, keyed the same as var.regions_lookup"
  value       = { for k, v in data.aws_regions.regions_lookup : k => v.all_regions if v.all_regions != null }
}
output "regions_lookup_filter" {
  description = "Map of filter values across all regions_lookup, keyed the same as var.regions_lookup"
  value       = { for k, v in data.aws_regions.regions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "regions_lookup_names" {
  description = "Map of names values across all regions_lookup, keyed the same as var.regions_lookup"
  value       = { for k, v in data.aws_regions.regions_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}

