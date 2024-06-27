data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "orgtechhskkeyvault" {
  name                        = "orgtechhskkeyvault"
  location                    = azurerm_resource_group.orgtechhsk-dev.location
  resource_group_name         = azurerm_resource_group.orgtechhsk-dev.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  purge_protection_enabled    = false
  soft_delete_retention_days  = 7

  sku_name = "standard"

  #   access_policy {
  #     tenant_id = data.azurerm_client_config.current.tenant_id
  #     object_id = data.azurerm_client_config.current.object_id

  #     secret_permissions = [
  #       "Get",
  #       "List",
  #       "Purge",
  #       "Recover",
  #       "Restore",
  #       "Set",
  #       "Delete",
  #       "Recover"
  #     ]
  #   }
}

resource "azurerm_key_vault_access_policy" "orgtechhskkeyvaultap" {
  key_vault_id = azurerm_key_vault.orgtechhskkeyvault.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = data.azurerm_client_config.current.object_id

  secret_permissions = [
    "Get",
    "List",
    "Purge",
    "Recover",
    "Restore",
    "Set",
    "Delete",
    "Recover"
  ]
}

resource "azurerm_key_vault_secret" "password-1" {
  name         = "password1"
  value        = random_password.password1.result
  key_vault_id = azurerm_key_vault.orgtechhskkeyvault.id
  depends_on   = [azurerm_key_vault_access_policy.orgtechhskkeyvaultap]
}

resource "azurerm_key_vault_secret" "password-2" {
  name         = "password2"
  value        = random_password.password2.result
  key_vault_id = azurerm_key_vault.orgtechhskkeyvault.id
  depends_on   = [azurerm_key_vault_access_policy.orgtechhskkeyvaultap]
}

resource "azurerm_key_vault_secret" "password-3" {
  name         = "password3"
  value        = random_password.password3.result
  key_vault_id = azurerm_key_vault.orgtechhskkeyvault.id
  depends_on   = [azurerm_key_vault_access_policy.orgtechhskkeyvaultap]
}

# resource "azurerm_key_vault_access_policy" "orgtechhskaccesspolicy" {
#   key_vault_id = azurerm_key_vault.orgtechhskkeyvault.id
#   tenant_id    = data.azurerm_client_config.current.tenant_id
#   object_id    = "46765071-a486-4d84-b617-5496db2bf6eb"
#   secret_permissions = [
#    "Get",
#     "List",
#     "Purge",
#     "Recover",
#     "Restore",
#     "Set", 
#     "Delete",
#     "Recover"
#   ]
# }

# azurerm_key_vault_access_policy.orgtechhskaccesspolicy: Creating...
# ╷
# │ Error: A resource with the ID "/subscriptions/1a182dd1-3f83-43d3-8ad1-8c0f689fae1f/resourceGroups/orghsktech-rg-dev/providers/Microsoft.KeyVault/vaults/orgtechhskkeyvault/objectId/46765071-a486-4d84-b617-5496db2bf6eb" already exists - to be managed via Terraform this resource needs to be imported into the State. Please see the resource documentation for "azurerm_key_vault_access_policy" for more information.
# │ 
# │   with azurerm_key_vault_access_policy.orgtechhskaccesspolicy,
# │   on 6.keyvault.tf line 52, in resource "azurerm_key_vault_access_policy" "orgtechhskaccesspolicy":
# │   52: resource "azurerm_key_vault_access_policy" "orgtechhskaccesspolicy" {
# │ 
# ╵
# Releasing state lock. This may take a few moments...
