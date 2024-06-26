
resource "azurerm_virtual_network" "orgtechhsk-vnet" {
  name                = "${azurerm_resource_group.orgtechhsk-dev.name}-vnet1"
  location            = azurerm_resource_group.orgtechhsk-dev.location
  address_space       = var.vnet1_address_space
  resource_group_name = azurerm_resource_group.orgtechhsk-dev.name
}