resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.this.id
  cidr_block = var.public_subnet_cidr

  tags = {
    Name = var.public_subnet_name
  }
}


resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.this.id
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = var.private_subnet_name
  }
}

resource "aws_subnet" "rds_subnet" {
  vpc_id     = aws_vpc.this.id
  cidr_block = var.rds_cidr

  tags = {
    Name = var.rds_subnet_name
  }
}
