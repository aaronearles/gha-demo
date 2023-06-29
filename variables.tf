variable "subscription_id" {
  type = string
  description = "Azure Subscription ID"
  # default = "7d3038aa-8bc2-40a3-a0ca-13c0d9cfcd68" //Sandbox
  default = "4fa877d6-c808-415e-93bd-2be1969e7f3a" //Pay-As-You-Go
}

variable "tenant_id" {
  type = string
  description = "Azure Tenant ID"
  # default = "ae2bff4d-4382-4532-b4a0-f1e5a9c874a8" //Pediatrix
  default = "2f9dc271-8ef4-4ba2-84a3-420e7837b641" //Aaron Personal Tenant
}

variable "resource_group_name" {
  type = string
  description = "Azure Resource Group"
  default = "gha-demo-rg"
}
