# Módulo AWS EC2 Windows

Este módulo cria uma instância EC2 Windows na AWS com configuração personalizada.

## Variáveis

### Obrigatórias:
- `ami_id`: ID da AMI para a instância.
- `key_name`: Nome do par de chaves para acesso à instância.
- `subnet_id`: ID da Subnet onde a instância será criada.
- `admin_password`: Senha do usuário administrador da instância.

### Opcionais:
- `region` (default: `"us-east-1"`): Região da AWS.
- `instance_type` (default: `"t3.micro"`): Tipo da instância.
- `root_volume_size` (default: `30`): Tamanho do volume root em GB.
- `root_volume_type` (default: `"gp2"`): Tipo do volume root.
- `admin_username` (default: `"Administrator"`): Nome de usuário administrador.
- `tags` (default: `{ created = "byterraform" }`): Tags para os recursos.

## Outputs

- `instance_id`: ID da instância EC2 criada.
- `private_ip`: Endereço IP privado da instância EC2.

## Exemplo de Uso

```hcl
module "ec2_windows" {
  source             = "./modules/aws-ec2-windows"
  region             = "us-east-1"
  ami_id             = "ami-0c55b159cbfafe1f0"
  instance_type      = "t3.medium"
  key_name           = "my-keypair"
  subnet_id          = "subnet-0123456789abcdef"
  root_volume_size   = 50
  admin_password     = "StrongPassword123!"
  tags = {
    environment = "dev"
    project     = "example"
  }
}
