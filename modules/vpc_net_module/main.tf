resource "azurerm_virtual_network" "p2-vnet" {
  name                = var.vnet
  address_space       = var.ip_block
  location            = var.vnet-location
  resource_group_name = var.vnet-rg
}
