terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "<= 1.15.1"
    }
    aws = {
      version = "<= 5.36.0"
      source  = "hashicorp/aws"
    }
    azurerm = {
      version = "<= 3.91.0"
      source  = "hashicorp/azurerm"
    }
    elastic = {
      version = "<= 0.11.0"
      source  = "elastic/elasticstack"
    }
  }
  required_version = ">= 0.13"
}

provider "azurerm" {
  features {}
}