provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

}

terraform {
  backend "azurerm" {
    resource_group_name  = "stateful-rg"
    storage_account_name = "aearles00"
    container_name       = "terraform"
    # use_azuread_auth     = true
    subscription_id = "4fa877d6-c808-415e-93bd-2be1969e7f3a" //Pay-As-You-Go
    tenant_id       = "2f9dc271-8ef4-4ba2-84a3-420e7837b641" //Aaron Personal Tenant 
    key             = "gha-demo"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}