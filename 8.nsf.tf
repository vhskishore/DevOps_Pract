resource "azurerm_network_security_group" "webserver-nsg" {
    name = "${azurerm_resource_group.orgtechhsk-dev.name}-webserver-NSG1"
    location = azurerm_resource_group.orgtechhsk-dev.location
    resource_group_name = azurerm_resource_group.orgtechhsk-dev.name
}

resource "azurerm_network_security_group" "appserver-nsg" {
    name = "${azurerm_resource_group.orgtechhsk-dev.name}-appserver-NSG1"
    location = azurerm_resource_group.orgtechhsk-dev.location
    resource_group_name = azurerm_resource_group.orgtechhsk-dev.name
}