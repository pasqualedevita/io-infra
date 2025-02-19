data "azurerm_eventhub_authorization_rule" "messages-weu-prod01-evh_messages_io-reminder" {
  name                = "${local.product}-reminder"
  namespace_name      = "${local.product}-messages-weu-prod01-evh-ns"
  eventhub_name       = "messages"
  resource_group_name = "${local.product}-messages-weu-prod01-evt-rg"
}

#tfsec:ignore:AZU023
resource "azurerm_key_vault_secret" "messages_io-p-messages-weu-prod01-evh-reminder_jaas-connection-string" {
  name         = "messages-io-p-messages-weu-prod01-evh-reminder-jaas-connection-string"
  value        = "org.apache.kafka.common.security.plain.PlainLoginModule required username=\"$ConnectionString\" password=\"${data.azurerm_eventhub_authorization_rule.messages-weu-prod01-evh_messages_io-reminder.primary_connection_string}\";"
  content_type = "full connection string for java"

  key_vault_id = module.key_vault.id
}

data "azurerm_eventhub_authorization_rule" "messages-weu-prod01-evh_message-status_io-reminder" {
  name                = "${local.product}-reminder"
  namespace_name      = "${local.product}-messages-weu-prod01-evh-ns"
  eventhub_name       = "message-status"
  resource_group_name = "${local.product}-messages-weu-prod01-evt-rg"
}

#tfsec:ignore:AZU023
resource "azurerm_key_vault_secret" "messages_io-p-message-status-weu-prod01-evh-reminder_jaas-connection-string" {
  name         = "messages-io-p-message-status-weu-prod01-evh-reminder-jaas-connection-string"
  value        = "org.apache.kafka.common.security.plain.PlainLoginModule required username=\"$ConnectionString\" password=\"${data.azurerm_eventhub_authorization_rule.messages-weu-prod01-evh_message-status_io-reminder.primary_connection_string}\";"
  content_type = "full connection string for java"

  key_vault_id = module.key_vault.id
}