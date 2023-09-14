
# Azure VNet Module

This Terraform module simplifies the creation of an Azure Virtual Network (VNet), subnets, and a Network Security Group (NSG) with best practices and reusability in mind.

## Example Usage:

```hcl
module "network" {
  source                  = "./modules/azure_vnet"
  vnet_name               = "myvnet"
  address_space           = ["10.0.0.0/16"]
  location                = "us-east-1"
  resource_group_name     = "testrg"
  subnet_names            = ["aks_subnet", "appgw_subnet"]
  subnet_address_prefixes = ["10.0.1.0/24", "10.0.2.0/24"]
  nsg_name                = "testnsg"
}
```

## Module Inputs

| Name                  | Description                                   | Type         | Default       | Required |
|-----------------------|-----------------------------------------------|--------------|---------------|----------|
| `vnet_name`             | Name of the Azure VNet                        | `string`       | -             | Yes      |
| `address_space`         | List of address spaces for the VNet          | `list(string)` | -             | Yes      |
| `location`              | Azure region where the VNet will be created  | `string`       | -             | Yes      |
| `resource_group_name`   | Name of the Azure Resource Group              | `string`       | -             | Yes      |
| `subnet_names`          | List of subnet names to create within the VNet| `list(string)` | -             | Yes      |
| `subnet_address_prefixes`| List of subnet address prefixes             | `list(string)` | -             | Yes      |
| `nsg_name`              | Name of the Network Security Group (NSG)     | `string`       | -             | Yes      |

## Outputs

| Name          | Description                  |
|---------------|------------------------------|
| `vnet_id`       | The ID of the VNet           |
| `subnet_ids`    | List of subnet IDs           |
