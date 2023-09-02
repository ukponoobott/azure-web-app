# azure-web-app
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.20.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.20.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_app_service_source_control.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/app_service_source_control) | resource |
| [azurerm_application_insights.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/application_insights) | resource |
| [azurerm_key_vault.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/key_vault) | resource |
| [azurerm_key_vault_secret.password](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.username](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/key_vault_secret) | resource |
| [azurerm_linux_web_app.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/linux_web_app) | resource |
| [azurerm_linux_web_app_slot.beta](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/linux_web_app_slot) | resource |
| [azurerm_linux_web_app_slot.prod](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/linux_web_app_slot) | resource |
| [azurerm_mssql_database.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/mssql_database) | resource |
| [azurerm_mssql_server.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/mssql_server) | resource |
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/resource_group) | resource |
| [azurerm_role_assignment.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/role_assignment) | resource |
| [azurerm_service_plan.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/resources/service_plan) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/password) | resource |
| [random_string.username](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/string) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.20.0/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | (Required) The environment in which the resources are been created. | `string` | `"dev"` | no |
| <a name="input_os_type"></a> [os\_type](#input\_os\_type) | The O/S type for the App Services to be hosted in this plan. Possible values include Windows, Linux, and WindowsContainer. Changing this forces a new resource to be created. | `string` | `"Linux"` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The SKU for the plan. Possible values include B1, B2, B3, D1, F1, I1, I2, I3, I1v2, I2v2, I3v2, I4v2, I5v2, I6v2, P1v2, P2v2, P3v2, P0v3, P1v3, P2v3, P3v3, P1mv3, P2mv3, P3mv3, P4mv3, P5mv3, S1, S2, S3, SHARED, EP1, EP2, EP3, WS1, WS2, WS3, and Y1. | `string` | `"F1"` | no |
| <a name="input_workload"></a> [workload](#input\_workload) | (Required) The workload of the resource created. | `string` | `"demo"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->