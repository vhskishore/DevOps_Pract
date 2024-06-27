data "azurerm_key_vault" "orgtechhskkeyvault" {
  name                = azurerm_key_vault.orgtechhskkeyvault.name
  resource_group_name = azurerm_resource_group.orgtechhsk-dev.name
}

resource "azurerm_key_vault_secret" "password-1-ds" {
  name         = "password-1-ds"
  value        = random_password.password1.result
  key_vault_id = azurerm_key_vault.orgtechhskkeyvault.id
}