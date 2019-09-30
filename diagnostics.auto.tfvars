#diagnostics settings for asr object
diagnostics_settings = {
    log = [
                # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period] 
                ["AzureBackupReport", true, true, 30],
                ["AzureSiteRecoveryJobs", true, true, 30],
                ["AzureSiteRecoveryEvents", true, true, 30],
                ["AzureSiteRecoveryReplicatedItems", true, true, 30],
                ["AzureSiteRecoveryReplicationStats", true, true, 30],
                ["AzureSiteRecoveryRecoveryPoints", true, true, 30],
                ["AzureSiteRecoveryReplicationDataUploadRate", true, true, 30],
                ["AzureSiteRecoveryProtectedDiskDataChurn", true, true, 30],
        ]
    metric = [
               #["AllMetrics", 60, True],
    ]
}