resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.this.id
  route {
    cidr_block = var.public_route_table_cidr
    gateway_id = aws_internet_gateway.this.id
  }
}

resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}
