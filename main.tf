resource "okta_group_owners" "group_owners" {
  for_each = var.group_owners

  group_id = each.value.group_id

  dynamic "owner" {
    for_each = each.value.owner != null ? each.value.owner : []
    content {
      id   = owner.value.id
      type = owner.value.type
    }
  }
}

