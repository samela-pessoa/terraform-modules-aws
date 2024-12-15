resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.name
  }
}

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.name}-route-table"
  }
}