resource "azurerm_network_security_rule" "webserverrule-tcp80" {
  count = 3
  name  = "webserver-tcp80"
  priority = 100
  direction = "Inbound"
  access = "Allow"
  protocol = "Tcp"
  source_port_range = "*"
  destination_port_range = "80"
  source_address_prefix = "*"
  resource_group_name = azurerm_resource_group.orgtechhsk-dev.name
  network_security_group_name = azurerm_network_security_group.appserver-nsg.name
}