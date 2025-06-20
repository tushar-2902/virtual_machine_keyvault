resource "azurerm_network_interface" "example" {
  name                = var.nic-name
  location            = var.location
  resource_group_name = var.rg-name

  ip_configuration {
    public_ip_address_id = data.azurerm_public_ip.example.id
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "example" {
  name                = var.vm-name
  resource_group_name = var.rg-name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = data.azurerm_key_vault_secret.example1.value
  admin_password      = data.azurerm_key_vault_secret.example2.value
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

