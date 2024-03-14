resource "aws_security_group" "rds_sg" {
  name        = "rds-security-group"
  description = "Security group for RDS DB instance"
  vpc_id      = module.network.vpc_id # Might be vpc_id output

  # Inbound rules
  ingress {
    description = "Allow MySQL/MariaDB access"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [module.network.public_subnet_cidr]
  }

  ingress {
    description = "Allow PostgreSQL access"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = [module.network.public_subnet_cidr]
  }

  # Outbound rules  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "RDS Security Group"
  }
}
