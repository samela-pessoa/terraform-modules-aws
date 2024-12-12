output "instance_id" {
  description = "ID da instância EC2 criada."
  value       = aws_instance.ec2_windows.id
}

output "private_ip" {
  description = "Endereço IP privado da instância EC2."
  value       = aws_instance.ec2_windows.private_ip
}
