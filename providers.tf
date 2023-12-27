terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "daskal-stateFile"
        storage_account_name = "sadaskalstatefile"
        container_name       = "statefile"
        key                  = "terraform.tfstate"
    }
}

provider "azurerm" {
  features {}
}

# resource "random_string" "random_name" {
#   length  = 6
#   upper   = false
#   special = false
#   numeric = false
# }
