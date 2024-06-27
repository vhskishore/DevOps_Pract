data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "orgtechhskkeyvault" {
  name = orgtechhskkeyvault
  location = azurerm_resource_group.orgtechhsk-dev.location
  resource_group_name = azurerm_resource_group.orgtechhsk-dev.name
  enabled_for_disk_encryption = true
  tenant_id = data.azurerm_client_config.current.tenant_id
  purge_protection_enabled = false
  soft_delete_retention_days = 7

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
        "Get",
        "List",
        "Purge",
        "Recover",
        "Restore",
        "Set",
        "Delete",
        "Recover"
    ]

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

    storage_permissions = [
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
}