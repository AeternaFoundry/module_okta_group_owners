variable "group_owners" {
  description = <<EOT
Map of group_owners, attributes below
Required:
    - group_id
Optional:
    - owner (block):
        - id (required)
        - type (required)
EOT

  type = map(object({
    group_id = string
    owner = optional(list(object({
      id   = string
      type = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.group_owners : (
        v.owner == null || alltrue([for item in v.owner : (contains(["GROUP", "USER"], item.type))])
      )
    ])
    error_message = "must be one of: \"GROUP\", \"USER\""
  }
}

