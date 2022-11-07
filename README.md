# Azure-StorageAccount

## Deploy an Azure Storage Account.

This Terraform module deploys a simple Azure Storage Account within Azure Cloud. For T.EN internally reasons, the container is only published on internal networks, through a An Azure Service Endpoint. 

## Usage

```hcl
module "storage_account" {
  source                 = "../../Modules/Azure-StorageAccount"
  resource_group_name    = var.resource_group_name
  location               = var.location
  project                = var.project
  scope                  = var.scope
  environment            = var.environment
  tags                   = var.tags
  ten_regional_code      = var.ten_regional_code
  subscription_code      = var.subscription_code
  storage_type           = var.storage_type
  storage_account_parameters = var.storage_account_parameters
  storage_account_ip_parameters = var.storage_account_ip_parameters
}
```

## Here is a simple template for calling the module. Be carefull of setting service endpoint service on used subnet.

```hcl 
tenant_id              = "9179d01a-e94c-4488-b5f0-4554bc474f8c"
subscription_id        = ""
resource_group_name    = ""
location               = "westeurope"
project                = ""
scope                  = ""
environment            = ""
ten_regional_code      = ""
subscription_code      = ""
storage_type           =  "sa" #sap & sas
storage_account_parameters = {
    account_tier             = "Standard"
    account_replication_type = "LRS"
}
storage_account_ip_parameters = {
    default_action            = "Deny"
    ip_rules                   = []
    virtual_network_subnet_ids = ["/subscriptions/<subscription_id>/resourceGroups/<rg_name>/providers/Microsoft.Network/virtualNetworks/<vnet_name>/subnets/<snet_name>"]
    #service endpoint Microsoft.storage mendatory
}
tags                 = {
    Description      = "This a Simple storage account module"
}
```

## Authors

Originally created by [Cloud Transformation Team](https://dev.azure.com/technipenergies/)

## License

[MIT](LICENSE)


## Contributing

This project welcomes contributions and suggestions.  