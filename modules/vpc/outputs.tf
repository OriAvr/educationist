output "vpc_id" {
  value = aws_vpc.this.id
}

output "vpc_cidr" {
  value = aws_vpc.this.cidr_block
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}

output "rds_subnet_id" {
  value = aws_subnet.rds_subnet.id
}

output "public_subnet_cidr" {
  value = aws_subnet.public_subnet.cidr_block
}

output "private_subnet_cidr" {
  value = aws_subnet.private_subnet.cidr_block
}

output "rds_subnet_cidr" {
  value = aws_subnet.rds_subnet.cidr_block
}

output "igw_id" {
  value = aws_internet_gateway.this.id
}
