output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.this.id
}

output "route_table_id" {
  description = "ID of the Main Route Table"
  value       = aws_route_table.main.id
}
