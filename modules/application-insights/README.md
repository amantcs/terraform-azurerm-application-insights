# Azure Application Insights Terraform Module

This module creates an Azure Application Insights component.

## Usage

```hcl
module "application_insights" {
  source = "./modules/application-insights"

  name                = "example-appinsights"
  location            = "West Europe"
  resource_group_name = "example-resources"
  workspace_id        = "/subscriptions/.../resourceGroups/.../providers/Microsoft.OperationalInsights/workspaces/..."
  application_type    = "web"

  tags = {
    Environment = "Development"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the Application Insights component. | `string` | n/a | yes |
| location | The Azure region where the Application Insights component should be created. | `string` | n/a | yes |
| resource_group_name | The name of the resource group in which to create the Application Insights component. | `string` | n/a | yes |
| application_type | The type of the application. | `string` | `"web"` | no |
| workspace_id | The ID of the Log Analytics Workspace. | `string` | `null` | no |
| tags | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Application Insights component. |
| app_id | The App ID associated with this Application Insights component. |
| instrumentation_key | The Instrumentation Key for this Application Insights component. |
| connection_string | The Connection String for this Application Insights component. |
