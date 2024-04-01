resource "azurerm_monitor_metric_alert" "example" {
  name                = "storage-metricalert"
  resource_group_name = "ibo-rg"
#   scopes              = ["/subscriptions/6e54aa79-9b0b-40ed-ae27-91fdffa0a565/resourcegroups/defaultresourcegroup-suk/providers/microsoft.operationalinsights/workspaces/defaultworkspace-6e54aa79-9b0b-40ed-ae27-91fdffa0a565-suk"]
  scopes = ["/subscriptions/6e54aa79-9b0b-40ed-ae27-91fdffa0a565/resourceGroups/ibo-rg/providers/Microsoft.Storage/storageAccounts/terradeploy00981"]
  description         = "Action will be triggered when Transactions count is greater than 50."

  criteria {
    metric_namespace = "Microsoft.Storage/storageAccounts"
    # metric_namespace = "Microsoft.OperationalInsights/workspaces"
    metric_name      = "Transactions"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = 50

    dimension {
      name     = "ApiName"
      operator = "Include"
      values   = ["*"]
    }
  }


}