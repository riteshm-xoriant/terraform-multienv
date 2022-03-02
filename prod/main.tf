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

module "resource-group-prod" {
  source = "../modules/rg_module"
  rg_name = "p2-prod-rg"
  rg_location = "westus2"
}

module "vnet-prod" {
  source = "../modules/vpc_net_module"
  vnet = "vnet-prod"
  ip_block = ["10.2.0.0/16"]
  vnet-rg = module.resource-group-prod.rg-name-op
}
