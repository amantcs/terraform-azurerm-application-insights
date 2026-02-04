data "azurerm_log_analytics_workspace" "existing" {
  name                = var.existing_workspace_name
  resource_group_name = var.existing_workspace_resource_group
}

resource "azurerm_resource_group" "example" {
  name     = "example-appinsights-rg"
  location = var.location
}

module "application_insights" {
  source = "../../modules/application-insights"

  name                = "example-appinsights"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  workspace_id        = data.azurerm_log_analytics_workspace.existing.id
  application_type    = "web"

  tags = {
    Environment = "Development"
    Source      = "Terraform"
  }
}
