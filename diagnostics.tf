resource "azurerm_monitor_diagnostic_setting" "diagnostics_asr" {
    name                            = "diag-${azurerm_recovery_services_vault.asr_rg_vault.name}"
    target_resource_id              = "${azurerm_recovery_services_vault.asr_rg_vault.id}"
    eventhub_name                   = "${var.diag_eh_name}"
    eventhub_authorization_rule_id  = "${var.diag_eh_id}/authorizationrules/RootManageSharedAccessKey"
    log_analytics_workspace_id      = "${var.la_workspace_id}"
    storage_account_id              = "${var.diag_sa}"

    log {
            category    = "AzureBackupReport"
            enabled     = true
            retention_policy {
                days    = 90
                enabled = true
            }
        }
    log {
            category    = "AzureSiteRecoveryJobs"
            enabled     = true
            retention_policy {
                days    = 90
                enabled = true
            }
        }
    log {
            category    = "AzureSiteRecoveryEvents"
            enabled     = true
            retention_policy {
                days    = 90
                enabled = true
            }
        }
    log    {
            category    = "AzureSiteRecoveryReplicatedItems"
            enabled     = true
            retention_policy {
                days    = 90
                enabled = true
            }
        }
    log   {
            category    = "AzureSiteRecoveryReplicationStats"
            enabled     = true
            retention_policy {
                days    = 90
                enabled = true
            }
        }
    log    {
            category    = "AzureSiteRecoveryRecoveryPoints"
            enabled     = true
            retention_policy {
                days    = 90
                enabled = true
            }
        }
    log {
            category    = "AzureSiteRecoveryReplicationDataUploadRate"
            enabled     = true
            retention_policy {
                days    = 90
                enabled = true
            }
        }
    log {
            category    = "AzureSiteRecoveryProtectedDiskDataChurn"
            enabled     = true
            retention_policy {
                days    = 90
                enabled = true
            }
        }
    

}