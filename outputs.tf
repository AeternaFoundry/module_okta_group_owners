output "group_owners_id" {
  description = "Map of id values across all group_owners, keyed the same as var.group_owners"
  value       = { for k, v in okta_group_owners.group_owners : k => v.id }
}
output "group_owners_group_id" {
  description = "Map of group_id values across all group_owners, keyed the same as var.group_owners"
  value       = { for k, v in okta_group_owners.group_owners : k => v.group_id }
}
output "group_owners_owner" {
  description = "Map of owner values across all group_owners, keyed the same as var.group_owners"
  value       = { for k, v in okta_group_owners.group_owners : k => v.owner }
}

