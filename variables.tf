variable "regions_lookup" {
  description = <<EOT
Map of regions_lookup, attributes below
Optional:
    - all_regions
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    all_regions = optional(bool)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

