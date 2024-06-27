terraform {
  required_providers {
    # mongodbatlas = {
    #   source  = "mongodb/mongodbatlas"
    #   version = "<= 1.15.1"
    # }
    # aws = {
    #   version = "<= 5.36.0"
    #   source  = "hashicorp/aws"
    # }
    azurerm = {
      version = "<= 3.91.0"
      source  = "hashicorp/azurerm"
    }
    # elastic = {
    #   version = "<= 0.11.0"
    #   source  = "elastic/elasticstack"
    # }
  }
  required_version = ">= 1.7.3"
  backend "azurerm" {
    resource_group_name  = "orghsktech-rg-dev"
    storage_account_name = "orgtechhskeustfstatefile"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

