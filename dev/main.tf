terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.95.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

module "resource-group-dev" {
  source = "../modules/rg_module"
  rg_name = "p2-dev-rg"
  rg_location = "westus2"
}

module "vnet-dev" {
  source = "../modules/vpc_net_module"
  vnet = "vnet-dev"
  ip_block = ["10.1.0.0/16"]
  vnet-rg = module.resource-group-dev.rg-name-op
}

