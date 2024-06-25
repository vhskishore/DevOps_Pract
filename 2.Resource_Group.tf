# resource "type-of-resource" "name-of-the-resource" {
#   attributes of the resources
#   arrguments of the resources ex: arg1 = ?
# }

resource "azurerm_resource_group" "orgtechrg-dev" {
  name     = "orgtechrg-dev"
  location = "eastus"
}

resource "azurerm_resource_group" "orgtechrg-qa" {
  name     = "orgtechrg-qa"
  location = "westus"
}

resource "azurerm_resource_group" "orgtechrg-prod" {
  name     = "orgtechrg-prod"
  location = "centralindia"
}