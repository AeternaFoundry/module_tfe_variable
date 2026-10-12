resource "tfe_variable" "variables" {
  for_each = var.variables

  category         = each.value.category
  key              = each.value.key
  description      = each.value.description
  hcl              = each.value.hcl
  sensitive        = each.value.sensitive
  value            = each.value.value
  value_wo         = each.value.value_wo
  value_wo_version = each.value.value_wo_version
  variable_set_id  = each.value.variable_set_id
  workspace_id     = each.value.workspace_id
}

