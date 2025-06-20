resource "azurerm_key_vault_secret" "example1" {
  name         = "adminname"
  value        = "Tusharadmin"
  key_vault_id = data.azurerm_key_vault.example.id
}

resource "azurerm_key_vault_secret" "example2" {
  name         = "adminpassword"
  value        = "Tushar@2021"
  key_vault_id = data.azurerm_key_vault.example.id
}