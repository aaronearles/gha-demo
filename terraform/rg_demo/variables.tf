variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}

variable "location" {
  type        = string
  description = "Azure region for deployment"
  default     = "East US"
}

variable "resource_group_name" {
  type        = string
  description = "Name of new Azure Resource Group"
}
