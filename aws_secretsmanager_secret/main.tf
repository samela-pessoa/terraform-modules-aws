resource "aws_secretsmanager_secret" "this" {
  name                     = "secret-${var.project}-${lookup(var.region_abbreviations, var.region)}-${var.env}"
  description              = var.description
  kms_key_id               = var.kms_key_id
  recovery_window_in_days  = var.recovery_window_in_days # Define o período de retenção antes da exclusão permanente
  tags                     = var.tags
}
