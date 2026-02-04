variable "name" {
  description = "The name of the Application Insights component."
  type        = string
}

variable "location" {
  description = "The Azure region where the Application Insights component should be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Application Insights component."
  type        = string
}

variable "application_type" {
  description = "The type of the application. Possible values are 'web', 'other', 'java', 'MobileCenter', 'phone', 'store', 'node.js', 'ios', 'docker'."
  type        = string
  default     = "web"
}

variable "workspace_id" {
  description = "The ID of the Log Analytics Workspace to be used for this Application Insights component."
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
