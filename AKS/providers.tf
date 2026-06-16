terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    organization = "pavankattamuri"

    workspaces {
      name = "azure-aks-deployment"
    }
  }
}

provider "azurerm" {
  features {}
}
