variable "resource_group_name" {
  description = "(Required) Resource group name"
}

variable "location" {
  description = "(Required) Location of the site recovery vault."
}

variable "asr_vault_name" {
  description = "(Required) name of the ASR vault"
}

variable "tags" {
  description = "(Required) tags to be applied to ASR vault"
}

variable "la_workspace_id" {
  description = "(Required) Log Analytics Repository"
}

variable "diagnostics_map" {
 description = "(Required) Map with the diagnostics repository information"
}

variable "opslogs_retention_period" {
  description = "(Optional) Number of days to keep operations logs inside storage account"
  default = 60
}
