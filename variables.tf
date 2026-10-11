variable "dataplex_entry_type_iam_bindings" {
  description = <<EOT
Map of dataplex_entry_type_iam_bindings, attributes below
Required:
    - entry_type_id
    - members
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    entry_type_id = string
    members       = set(string)
    role          = string
    location      = optional(string)
    project       = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

