# Nome do projeto
variable "project" {
  description = "Nome do projeto relacionado ao segredo"
  type        = string
}

# Região AWS
variable "region" {
  description = "Região onde o segredo será criado"
  type        = string
}

# Ambiente
variable "env" {
  description = "Ambiente do segredo (ex.: dev, qa, prod)"
  type        = string
}

# Descrição do segredo
variable "description" {
  description = "Descrição do segredo"
  type        = string
  default     = "Segredo gerenciado pelo Terraform"
}

# Chave KMS para criptografia
variable "kms_key_id" {
  description = "ARN da chave KMS para criptografar o segredo"
  type        = string
  default     = null
}

# Dias para exclusão
variable "recovery_window_in_days" {
  description = "Dias antes do segredo ser excluído permanentemente"
  type        = number
  default     = 7
}

# Tags para o recurso
variable "tags" {
  description = "Tags do segredo"
  type        = map(string)
  default     = {}
}

# Abreviações de região
variable "region_abbreviations" {
  description = "Mapeamento de abreviações para as regiões AWS"
  type = map(string)
  default = {
    "us-east-1"       = "ue1"
    "us-east-2"       = "ue2"
    "us-west-1"       = "uw1"
    "us-west-2"       = "uw2"
    "sa-east-1"       = "sa1"
    "eu-west-1"       = "ew1"
    "eu-central-1"    = "ec1"
    "ap-south-1"      = "as1"
    "ap-northeast-1"  = "an1"
  }
}

variable "state_key" {
  description = "Chave única para o arquivo de estado no S3"
  type        = string
}