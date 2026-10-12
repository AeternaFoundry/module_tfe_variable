output "variables_id" {
  description = "Map of id values across all variables, keyed the same as var.variables except keys with no id are omitted"
  value       = { for k, v in tfe_variable.variables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "variables_category" {
  description = "Map of category values across all variables, keyed the same as var.variables except keys with no category are omitted"
  value       = { for k, v in tfe_variable.variables : k => v.category if v.category != null && length(v.category) > 0 }
}
output "variables_description" {
  description = "Map of description values across all variables, keyed the same as var.variables except keys with no description are omitted"
  value       = { for k, v in tfe_variable.variables : k => v.description if v.description != null && length(v.description) > 0 }
}
output "variables_hcl" {
  description = "Map of hcl values across all variables, keyed the same as var.variables except keys with no hcl are omitted"
  value       = { for k, v in tfe_variable.variables : k => v.hcl if v.hcl != null }
}
output "variables_key" {
  description = "Map of key values across all variables, keyed the same as var.variables except keys with no key are omitted"
  value       = { for k, v in tfe_variable.variables : k => v.key if v.key != null && length(v.key) > 0 }
}
output "variables_readable_value" {
  description = "Map of readable_value values across all variables, keyed the same as var.variables except keys with no readable_value are omitted"
  value       = { for k, v in tfe_variable.variables : k => v.readable_value if v.readable_value != null && length(v.readable_value) > 0 }
}
output "variables_sensitive" {
  description = "Map of sensitive values across all variables, keyed the same as var.variables except keys with no sensitive are omitted"
  value       = { for k, v in tfe_variable.variables : k => v.sensitive if v.sensitive != null }
}
output "variables_value" {
  description = "Map of value values across all variables, keyed the same as var.variables except keys with no value are omitted"
  value       = { for k, v in tfe_variable.variables : k => v.value if v.value != null && length(v.value) > 0 }
  sensitive   = true
}
output "variables_value_wo_version" {
  description = "Map of value_wo_version values across all variables, keyed the same as var.variables except keys with no value_wo_version are omitted"
  value       = { for k, v in tfe_variable.variables : k => v.value_wo_version if v.value_wo_version != null }
}
output "variables_variable_set_id" {
  description = "Map of variable_set_id values across all variables, keyed the same as var.variables except keys with no variable_set_id are omitted"
  value       = { for k, v in tfe_variable.variables : k => v.variable_set_id if v.variable_set_id != null && length(v.variable_set_id) > 0 }
}
output "variables_workspace_id" {
  description = "Map of workspace_id values across all variables, keyed the same as var.variables except keys with no workspace_id are omitted"
  value       = { for k, v in tfe_variable.variables : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

