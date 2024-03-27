# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#     #   version = "3.53.0"
#     }
#   }
#   backend "azurerm" {
#     resource_group_name = "SandboxSS-rg"
#     storage_account_name = "pdxsandbox"
#     container_name = "terraform"
#     key = "rg_demo.tfstate"
#   }
# }

terraform {
  backend "azurerm" {
    resource_group_name  = "stateful-rg"
    storage_account_name = "aearles00"
    container_name       = "terraform"
    # use_azuread_auth     = true
    # subscription_id = "4fa877d6-c808-415e-93bd-2be1969e7f3a" //Pay-As-You-Go
    # tenant_id       = "2f9dc271-8ef4-4ba2-84a3-420e7837b641" //Aaron Personal Tenant 
    key = "rg_demo"
  }
}

# provider "azurerm" {
#   features {}

#   subscription_id = "7d3038aa-8bc2-40a3-a0ca-13c0d9cfcd68" //Sandbox
#   tenant_id       = "ae2bff4d-4382-4532-b4a0-f1e5a9c874a8" //Pediatrix
#   }

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

}

locals {
  tags = {
    BusinessUnit = "Sandbox"
    BusinessOwner = "Aaron"
    ApplicationName = "rg_demo"
    Environment = "Sandbox"
    Compliance = "N"
  }
}

resource "azurerm_resource_group" "rg_demo-rg" {
  name     = "rg_demo-rg"
  location = var.location
  tags = local.tags
}