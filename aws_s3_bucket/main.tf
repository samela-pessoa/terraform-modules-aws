terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Gera um número aleatório de 3 dígitos
resource "random_integer" "bucket_suffix" {
  min = 100
  max = 999
}

# Cria o bucket S3 com nome gerado dinamicamente
resource "aws_s3_bucket" "this" {
  bucket = "s3-${var.project}-${lookup(var.region_abbreviations, var.region)}-${var.env}-${random_integer.bucket_suffix.result}"

  tags = var.tags
}

# Habilita versionamento no bucket
resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Configura criptografia no bucket
resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Configurações de bloqueio público
resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
