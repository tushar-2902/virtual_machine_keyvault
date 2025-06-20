data "azurerm_key_vault" "example" {
  name                = var.kv-name
  resource_group_name = var.rg-name
}

