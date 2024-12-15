variable "state_key" {
  description = "Chave do arquivo de estado no S3"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Nome do projeto
variable "project" {
  description = "Nome do projeto relacionado ao bucket"
  type        = string
}

# Região AWS
variable "region" {
  description = "Região onde o bucket será criado"
  type        = string
}

# Ambiente
variable "env" {
  description = "Ambiente do bucket (ex.: dev, qa, prod)"
  type        = string
}

# Tags para o recurso
variable "tags" {
  description = "Tags aplicadas ao bucket S3"
  type        = map(string)
  default     = {}
}

# Abreviações de região
variable "region_abbreviations" {
  description = "Mapeamento de abreviações para as regiões AWS"
  type        = map(string)
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

