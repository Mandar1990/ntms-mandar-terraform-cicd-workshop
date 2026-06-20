terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "stntmstfstate"
    container_name       = "mandar"
    key                  = "mandar.terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {}


}
