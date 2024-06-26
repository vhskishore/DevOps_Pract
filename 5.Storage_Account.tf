resource "azurerm_storage_account" "orghsktecheus" {
  name                     = var.tfstate_storage_account
  resource_group_name      = azurerm_resource_group.orgtechhsk-dev.name
  location                 = azurerm_resource_group.orgtechhsk-dev.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}