variable "variables" {
  description = <<EOT
Map of variables, attributes below
Required:
    - category
    - key
Optional:
    - description
    - hcl
    - sensitive
    - value
    - value_wo
    - value_wo_version
    - variable_set_id
    - workspace_id
EOT

  type = map(object({
    category         = string
    key              = string
    description      = optional(string)
    hcl              = optional(bool)
    sensitive        = optional(bool)
    value            = optional(string)
    value_wo         = optional(string)
    value_wo_version = optional(number)
    variable_set_id  = optional(string)
    workspace_id     = optional(string)
  }))
}

