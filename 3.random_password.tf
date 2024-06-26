resource "random_password" "password" {
  length           = 16
  special          = true
  min_special      = 5
  min_lower        = 5
  min_numeric      = 2
  min_upper        = 4
  override_special = "!#$%"
}