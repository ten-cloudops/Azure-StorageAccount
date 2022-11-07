
resource "azurerm_storage_account" "storage_account" {
  #name                     = join("", ["az",var.storage_type,join("",[var.ten_regional_code,var.subscription_code]),var.project,var.environment])
  name                     = join("", ["az",var.storage_type,var.ten_regional_code,var.project,var.environment])
  resource_group_name      = var.resource_group_name
  location                 = var.location
  allow_nested_items_to_be_public = false
  account_tier             = lookup(var.storage_account_parameters,"account_tier")
  account_replication_type = lookup(var.storage_account_parameters,"account_replication_type")
  #network_rules {
  #  default_action             = lookup(var.storage_account_ip_parameters,"default_action")
  #  ip_rules                   = lookup(var.storage_account_ip_parameters,"ip_rules")
  #  virtual_network_subnet_ids = lookup(var.storage_account_ip_parameters,"virtual_network_subnet_ids")
  #}
  tags = var.tags
}