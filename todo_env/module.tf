module "rg" {
  source = "../azurerm_resource_group"
  rg-name = "tushar-rg"
  location = "west us 3"
}

module "virtual_network" {
  depends_on = [ module.rg ]
  source = "../azurerm_virtual_network"
  vn-name = "tushar-vn"
  location = "west us 3"
   rg-name = "tushar-rg"
}

module "subnet" {
  depends_on = [ module.virtual_network ]
  source = "../azurerm_subnet"
  sb-name = "fortend"
  rg-name = "tushar-rg"
  vn-name = "tushar-vn"
  address_prefixes = ["10.0.0.0/24"]

}

module "subnet1" {
  depends_on = [ module.virtual_network ]
  source = "../azurerm_subnet"
  sb-name = "backend"
  rg-name = "tushar-rg"
  vn-name = "tushar-vn"
  address_prefixes = ["10.0.1.0/24"]

}

module "ip" {
  depends_on = [ module.rg ]
  source = "../azurerm_public_ip"
  ip-name = "tushar-ip"
  rg-name = "tushar-rg"
  location = "west us 3"
}

module "kv" {
  depends_on = [ module.rg ]
  source = "../azurerm_key_vault"
  kv-name = "tushar-kv"
  location = "west us 3"
  rg-name = "tushar-rg"
}

module "kvs" {
  depends_on = [ module.kv ]
  source = "../azurerm_key_valut_screte"
  kv-name = "tushar-kv"
  rg-name = "tushar-rg"
}

module "vitual_machine" {
  depends_on = [module.subnet]
  source = "../azurerm_virtual_machine"
  nic-name = "tushar-nic"
  location = "west us 3"
  rg-name = "tushar-rg"
  vm-name = "tushar-vm"
  sb-name = "fortend"
  vn-name = "tushar-vn"
  ip-name = "tushar-iP"
}

