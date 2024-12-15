# Output: ID do segredo
output "secret_id" {
  value = aws_secretsmanager_secret.this.id
}

# Output: ARN do segredo
output "secret_arn" {
  value = aws_secretsmanager_secret.this.arn
}

# Output: Nome do segredo
output "secret_name" {
  value = aws_secretsmanager_secret.this.name
}
