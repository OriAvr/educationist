resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"                   # This is the value you'll use in `db_subnet_group_name`
  subnet_ids = [var.rds_subnet, var.private_subnet] # List of all subnet IDs for the RDS

  tags = {
    Name = "My RDS Subnet Group"
  }
}


resource "aws_db_instance" "this" {
  db_name             = var.rds_name
  engine              = var.rds_engine
  engine_version      = var.rds_engine_version
  instance_class      = var.rds_instance_class
  allocated_storage   = var.rds_allocated_storage
  username            = var.rds_username
  password            = var.rds_password
  skip_final_snapshot = true #required to destroy

  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids  = [var.rds_security_group]
  backup_retention_period = var.rds_backup_retention
}

