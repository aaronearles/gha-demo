provider "azurerm" {
    features {}

    subscription_id = var.subscription_id
    tenant_id       = var.tenant_id

}

terraform {
  backend "azurerm" {
  //see backend-config.tfvars
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}