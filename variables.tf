variable "subscription_id" {
  type = string
  description = "Azure Subscription ID"
}

variable "tenant_id" {
  type = string
  description = "Azure Tenant ID"
}

variable "location" {
  type = string
  description = "Location to deploy new resources"
}

variable "resource_group_name" {
  type = string
  description = "Name of new Azure Resource Group"
}
