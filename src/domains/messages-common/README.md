<!-- markdownlint-disable -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | = 2.21.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | = 2.99.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | = 3.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 2.21.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.99.0 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_apim_product_notifications"></a> [apim\_product\_notifications](#module\_apim\_product\_notifications) | git::https://github.com/pagopa/azurerm.git//api_management_product | v1.0.16 |
| <a name="module_apim_service_messages_api_v1"></a> [apim\_service\_messages\_api\_v1](#module\_apim\_service\_messages\_api\_v1) | git::https://github.com/pagopa/azurerm.git//api_management_api | v1.0.16 |
| <a name="module_cosmosdb_account_mongodb_reminder"></a> [cosmosdb\_account\_mongodb\_reminder](#module\_cosmosdb\_account\_mongodb\_reminder) | git::https://github.com/pagopa/azurerm.git//cosmosdb_account | v2.15.1 |
| <a name="module_key_vault"></a> [key\_vault](#module\_key\_vault) | git::https://github.com/pagopa/azurerm.git//key_vault | v2.13.1 |
| <a name="module_mongdb_collection_reminder"></a> [mongdb\_collection\_reminder](#module\_mongdb\_collection\_reminder) | git::https://github.com/pagopa/azurerm.git//cosmosdb_mongodb_collection | v2.3.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_api_management_group.apimessagereadadvanced](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/api_management_group) | resource |
| [azurerm_api_management_group.apimessagewriteadvanced](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/api_management_group) | resource |
| [azurerm_api_management_group.apinewmessagenotify](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/api_management_group) | resource |
| [azurerm_api_management_group.apiremindernotify](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/api_management_group) | resource |
| [azurerm_api_management_group.apithirdpartymessagewrite](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/api_management_group) | resource |
| [azurerm_api_management_group_user.reminder_group](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/api_management_group_user) | resource |
| [azurerm_api_management_subscription.reminder](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/api_management_subscription) | resource |
| [azurerm_api_management_user.reminder_user](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/api_management_user) | resource |
| [azurerm_cosmosdb_mongo_database.db_reminder](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/cosmosdb_mongo_database) | resource |
| [azurerm_key_vault_access_policy.adgroup_admin](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_access_policy) | resource |
| [azurerm_key_vault_access_policy.adgroup_contributors](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_access_policy) | resource |
| [azurerm_key_vault_access_policy.adgroup_developers](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_access_policy) | resource |
| [azurerm_key_vault_access_policy.azdevops_platform_iac_policy](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_access_policy) | resource |
| [azurerm_key_vault_secret.api_storage_connection_string](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.appinsights_connection_string](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.appinsights_instrumentation_key](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.cosmos_api_master_key](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.messages_io-p-message-status-weu-prod01-evh-reminder_jaas-connection-string](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.messages_io-p-messages-weu-prod01-evh-reminder_jaas-connection-string](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.mongodb_connection_string_reminder](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.notifications_storage_connection_string](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.reminder_subscription_primary_key](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/key_vault_secret) | resource |
| [azurerm_resource_group.data_rg](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/resource_group) | resource |
| [azurerm_resource_group.sec_rg](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/resources/resource_group) | resource |
| [azuread_group.adgroup_admin](https://registry.terraform.io/providers/hashicorp/azuread/2.21.0/docs/data-sources/group) | data source |
| [azuread_group.adgroup_contributors](https://registry.terraform.io/providers/hashicorp/azuread/2.21.0/docs/data-sources/group) | data source |
| [azuread_group.adgroup_developers](https://registry.terraform.io/providers/hashicorp/azuread/2.21.0/docs/data-sources/group) | data source |
| [azuread_group.adgroup_externals](https://registry.terraform.io/providers/hashicorp/azuread/2.21.0/docs/data-sources/group) | data source |
| [azuread_group.adgroup_security](https://registry.terraform.io/providers/hashicorp/azuread/2.21.0/docs/data-sources/group) | data source |
| [azuread_service_principal.platform_iac_sp](https://registry.terraform.io/providers/hashicorp/azuread/2.21.0/docs/data-sources/service_principal) | data source |
| [azurerm_api_management.apim_api](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/api_management) | data source |
| [azurerm_application_insights.application_insights](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/application_insights) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/client_config) | data source |
| [azurerm_cosmosdb_account.cosmos_api](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/cosmosdb_account) | data source |
| [azurerm_eventhub_authorization_rule.messages-weu-prod01-evh_message-status_io-reminder](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/eventhub_authorization_rule) | data source |
| [azurerm_eventhub_authorization_rule.messages-weu-prod01-evh_messages_io-reminder](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/eventhub_authorization_rule) | data source |
| [azurerm_log_analytics_workspace.log_analytics](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/log_analytics_workspace) | data source |
| [azurerm_monitor_action_group.email](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/monitor_action_group) | data source |
| [azurerm_monitor_action_group.slack](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/monitor_action_group) | data source |
| [azurerm_private_dns_zone.privatelink_mongo_cosmos_azure_com](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/private_dns_zone) | data source |
| [azurerm_resource_group.monitor_rg](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/resource_group) | data source |
| [azurerm_storage_account.api_storage](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/storage_account) | data source |
| [azurerm_storage_account.notifications_storage](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/storage_account) | data source |
| [azurerm_subnet.private_endpoints_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/subnet) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/subscription) | data source |
| [azurerm_virtual_network.vnet_common](https://registry.terraform.io/providers/hashicorp/azurerm/2.99.0/docs/data-sources/virtual_network) | data source |
| [terraform_remote_state.core](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_insights_name"></a> [application\_insights\_name](#input\_application\_insights\_name) | Specifies the name of the Application Insights. | `string` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | n/a | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | n/a | yes |
| <a name="input_env_short"></a> [env\_short](#input\_env\_short) | n/a | `string` | n/a | yes |
| <a name="input_instance"></a> [instance](#input\_instance) | One of beta, prod01, prod02 | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | One of westeurope, northeurope | `string` | n/a | yes |
| <a name="input_location_short"></a> [location\_short](#input\_location\_short) | One of wue, neu | `string` | n/a | yes |
| <a name="input_lock_enable"></a> [lock\_enable](#input\_lock\_enable) | Apply locks to block accedentaly deletions. | `bool` | `false` | no |
| <a name="input_log_analytics_workspace_name"></a> [log\_analytics\_workspace\_name](#input\_log\_analytics\_workspace\_name) | Specifies the name of the Log Analytics Workspace. | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_resource_group_name"></a> [log\_analytics\_workspace\_resource\_group\_name](#input\_log\_analytics\_workspace\_resource\_group\_name) | The name of the resource group in which the Log Analytics workspace is located in. | `string` | n/a | yes |
| <a name="input_monitor_resource_group_name"></a> [monitor\_resource\_group\_name](#input\_monitor\_resource\_group\_name) | Monitor resource group name | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(any)` | <pre>{<br>  "CreatedBy": "Terraform"<br>}</pre> | no |
| <a name="input_terraform_remote_state_core"></a> [terraform\_remote\_state\_core](#input\_terraform\_remote\_state\_core) | n/a | <pre>object({<br>    resource_group_name  = string,<br>    storage_account_name = string,<br>    container_name       = string,<br>    key                  = string<br>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
