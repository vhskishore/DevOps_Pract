
resource "azurerm_virtual_network" "orgtechhsk-vnet" {
  name                = "${azurerm_resource_group.orgtechhsk-dev.name}-vnet1"
  location            = azurerm_resource_group.orgtechhsk-dev.location
  address_space       = var.vnet1_address_space
  resource_group_name = azurerm_resource_group.orgtechhsk-dev.name
}

resource "azurerm_subnet" "subnet-1" {
  name = "${azurerm_virtualnetwork.orgtechhsk-vnet.name}-subnet-1"
  resource_group_name = azurerm_resource_group.orgtechhsk-dev.name
  virtual_network_name = azurerm_virtual_network.orgtechhsk-vnet.name
  address_prefixes = var.subnet-1-address_prefixes
}