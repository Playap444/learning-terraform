# # Configure the Azure provider
# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~> 2.90.0"
#     }
#   }

#   required_version = ">= 0.14.9"
# }

provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}


resource "azurerm_storage_account" "main_storage" {
  name                              = "stgtyfytf766"
  resource_group_name               = "test"
  location                          = "eastus"
  account_tier                      = "Standard"
  account_replication_type          = "LRS"
  infrastructure_encryption_enabled = true
  allow_nested_items_to_be_public   = false
  shared_access_key_enabled         = false


}