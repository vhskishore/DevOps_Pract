resource "random_password" "password1" {
  length           = 16
  special          = true
  min_special      = 5
  min_lower        = 5
  min_numeric      = 2
  min_upper        = 4
  override_special = "!#$%"
  depends_on       = [azurerm_storage_account.orghsktecheus]
}

resource "random_password" "password2" {
  length           = 16
  special          = true
  min_special      = 5
  min_lower        = 5
  min_numeric      = 2
  min_upper        = 4
  override_special = "!#$%"
  depends_on       = [random_password.password1]
}

resource "random_password" "password3" {
  length           = 16
  special          = true
  min_special      = 5
  min_lower        = 5
  min_numeric      = 2
  min_upper        = 4
  override_special = "!#$%"
  depends_on       = [random_password.password2]
}