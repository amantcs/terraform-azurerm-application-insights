variable "existing_workspace_name" {
  description = "The name of the existing Log Analytics Workspace."
  type        = string
}

variable "existing_workspace_resource_group" {
  description = "The Resource Group name of the existing Log Analytics Workspace."
  type        = string
}

variable "location" {
  description = "The location for the new Application Insights resource."
  type        = string
  default     = "West Europe"
}
