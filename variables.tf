variable "resource_group_name" {
  description = "Resource group name"
}

variable "location" {
  description = "Location of the resources"
}

variable "asr_vault_name" {
  description = "name of the ASR vault"
}

variable "tags" {
  description = "tags to be applied to ASR"
}

variable "la_workspace_id" {
  description = "Log Analytics Repository"
}
variable "diagnostics_map" {
 description = "Map with the diagnostics repository information"
}

variable "opslogs_retention_period" {
  description = "(Optional) Number of days to keep operations logs inside storage account"
  default = 60
}
