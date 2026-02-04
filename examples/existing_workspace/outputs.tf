output "app_insights_connection_string" {
  value     = module.application_insights.connection_string
  sensitive = true
}

output "workspace_id" {
  value = data.azurerm_log_analytics_workspace.existing.id
}
