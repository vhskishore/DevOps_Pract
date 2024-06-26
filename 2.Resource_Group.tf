# resource "type-of-resource" "name-of-the-resource" {
#   attributes of the resources
#   arrguments of the resources ex: arg1 = ?
# }

resource "azurerm_resource_group" "orgtechhsk-dev" {
  name     = var.rgname
  location = var.location
  tags = {
    env = "${var.rgname}-eus-dev"
  }
}

# resource "azurerm_resource_group" "orgtechhsk-qa" {
#   name     = "orgtechhsk-qa"
#   location = "westus"
#   tags = {
#     env = "orgtechhsk-wus-qa"
#   }
# }

# resource "azurerm_resource_group" "orgtechhsk-prod" {
#   name     = "orgtechhsk-prod"
#   location = "centralindia"
#   tags = {
#     env = "orgtechhsk-cind-prod"
#   }
# }