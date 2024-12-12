variable "region" {
  description = "Região da AWS onde a instância será criada."
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "ID da AMI para a instância EC2 Windows."
  type        = string
}

variable "instance_type" {
  description = "Tipo da instância EC2. Exemplo: 't3.micro'."
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Nome do par de chaves para acesso à instância."
  type        = string
}

variable "subnet_id" {
  description = "ID da Subnet onde a instância será criada."
  type        = string
}

variable "root_volume_size" {
  description = "Tamanho do volume root em GB."
  type        = number
  default     = 30
}

variable "root_volume_type" {
  description = "Tipo do volume root. Exemplo: 'gp2', 'gp3', 'io1'."
  type        = string
  default     = "gp2"
}

variable "admin_username" {
  description = "Nome de usuário administrador da instância EC2 Windows."
  type        = string
  default     = "Administrator"
}

variable "admin_password" {
  description = "Senha para o usuário administrador da instância EC2 Windows."
  type        = string
}

variable "tags" {
  description = "Tags para os recursos criados."
  type        = map(string)
  default     = {
    created = "byterraform"
  }
}
