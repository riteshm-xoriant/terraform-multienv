resource "azurerm_resource_group" "p2-rg" {
  name     = var.rg_name
  location = var.rg_location
}


output "location-op" {
  value = azurerm_resource_group.p2-rg.location
}

output "rg-name-op" {
  value = azurerm_resource_group.p2-rg.name
}
