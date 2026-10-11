data "aws_regions" "regions_lookup" {
  for_each = var.regions_lookup

  all_regions = each.value.all_regions

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

