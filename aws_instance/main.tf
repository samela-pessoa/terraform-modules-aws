provider "aws" {
  region = var.region
}

resource "aws_instance" "ec2_windows" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  associate_public_ip_address = false  #Garante que não será atribuído IP público
  tags                        = var.tags

  #Configuração do volume root
  root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
  }

  #Confiração do user e senha
  user_data = base64encode(<<-EOF
    <powershell>
      net user ${var.admin_username} ${var.admin_password}
    </powershell>
  EOF
  )
}
