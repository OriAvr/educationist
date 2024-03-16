resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = var.rds_subnet_group_name
  subnet_ids = [var.rds_subnet, var.private_subnet]
  tags = {
    Desc = "My RDS Subnet Group"
  }
}


resource "aws_db_instance" "this" {
  db_name                 = var.rds_name
  engine                  = var.rds_engine
  engine_version          = var.rds_engine_version
  instance_class          = var.rds_instance_class
  allocated_storage       = var.rds_allocated_storage
  username                = var.rds_username
  password                = var.rds_password
  skip_final_snapshot     = true
  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids  = [var.rds_security_group]
  backup_retention_period = var.rds_backup_retention
}

