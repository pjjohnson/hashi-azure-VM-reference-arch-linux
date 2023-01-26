terraform {
  cloud {
    organization = "pjjohnson"
    workspaces {
      name = "hashicorp-azure-demo-scaffold"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.26.0"
    }
    # random = {
    #   source  = "hashicorp/random"
    #   version = "~>3.0"
    # }
  }
}

provider "azurerm" {
  features {}
}

# Accept terms
resource "azurerm_marketplace_agreement" "flatcar" {
  publisher = "kinvolk"
  offer     = "flatcar-container-linux-free"
  plan      = "stable-gen2"
}