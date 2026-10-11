output "group_owners_id" {
  description = "Map of id values across all group_owners, keyed the same as var.group_owners except keys with no id are omitted"
  value       = { for k, v in okta_group_owners.group_owners : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_owners_group_id" {
  description = "Map of group_id values across all group_owners, keyed the same as var.group_owners except keys with no group_id are omitted"
  value       = { for k, v in okta_group_owners.group_owners : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "group_owners_owner" {
  description = "Map of owner values across all group_owners, keyed the same as var.group_owners except keys with no owner are omitted"
  value       = { for k, v in okta_group_owners.group_owners : k => v.owner if v.owner != null && length(v.owner) > 0 }
}

