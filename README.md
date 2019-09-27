# Deploys an Azure Site Recovery Vault
Creates the Azure Site Recovery Vault in a given region


Reference the module to a specific version (recommended):
```hcl
module "site_recovery" {
    source                  = "git://github.com/aztfmod/site_recovery.git?ref=v0.1"
  
    resource_group_name               = var.rg
    asr_vault_name                    = var.name
    location                          = var.location
    tags                              = var.tags
    opslogs_retention_period          = var.retention
    diagnostics_map                   = var.diagsmap
    la_workspace_id                   = var.laworkspace.id
}
```

Or get the latest version
```hcl
module "site_recovery" {
    source                  = "git://github.com/aztfmod/site_recovery.git?ref=latest"
  
    resource_group_name               = var.rg
    auto_name                         = var.name
    location                          = var.location
    tags                              = var.tags
    opslogs_retention_period          = var.retention
    diagnostics_map                   = var.diagsmap
    la_workspace_id                   = var.laworkspace.id
}
```

# Parameters
## asr_vault_name
(Required) name of the ASR vault
```hcl
variable "asr_vault_name" {
  description = "name of the ASR vault"
}

```
Example
```hcl
asr_vault_name = "myvault"
```

## resource_group_name
(Required) (Required) Name of the resource group to deploy the ASR vault.
```hcl
variable "resource_group_name" {
  description = "(Required) Name of the resource group to deploy the ASR vault."
}

```
Example
```hcl
resource_group_name = "operations-rg"
```

## location
(Required) Define the region where the ASR vault will be created.
```hcl

variable "location" {
  description = "(Required) Define the region where the ASR vault will be created"
  type        = string
}
```
Example
```hcl
    location    = "southeastasia"
```

## tags
(Required) Map of tags for the deployment
```hcl
variable "tags" {
  description = "(Required) map of tags for the deployment"
}
```
Example
```hcl
tags = {
    environment     = "DEV"
    owner           = "Arnaud"
    deploymentType  = "Terraform"
  }
```

## opslogs_retention_period
(Optional) Number of days to keep operations logs inside storage account
```hcl
variable "opslogs_retention_period" {
  description = "(Optional) Number of days to keep operations logs inside storage account"
  default = 60
}
```
Example
```hcl
opslogs_retention_period = 180
```

## la_workspace_id
(Required) Log Analytics Repository ID
```hcl
variable "la_workspace_id" {
  description = "Log Analytics Repository"
}
```
Example
```hcl
la_workspace_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/arnaud-hub-operations/providers/microsoft.operationalinsights/workspaces/mylalogs"
```

## diagnostics_map
(Required) Map with the diagnostics repository information"
```hcl
variable "diagnostics_map" {
 description = "(Required) Map with the diagnostics repository information"
}
```
Example
```hcl
  diagnostics_map = {
      diags_sa      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/arnaud-hub-operations/providers/Microsoft.Storage/storageAccounts/opslogskumowxv"
      eh_id         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/arnaud-hub-operations/providers/Microsoft.EventHub/namespaces/opslogskumowxv"
      eh_name       = "opslogskumowxv"
  }
```



# Output
## asr_configuration
Returns the resource id of the created ASR.
```hcl
output "asr_configuration" {
  value = azurerm_recovery_services_vault.asr_rg_vault
}
```
