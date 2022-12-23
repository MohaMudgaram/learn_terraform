resource "azurerm_virtual_network" "example" {
  name                = "${var.vnets_env_list[count.index]}-VN"
  address_space       = ["${var.vnets_list[count.index]}/16"]
  location            = var.resource_group_location
  resource_group_name = var.rg_name
  count               = length(var.vnets_env_list)
}