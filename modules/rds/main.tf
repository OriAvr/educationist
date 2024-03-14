resource "aws_db_instance" "this" {
  db_name             = var.rds_name
  engine              = var.rds_engine
  engine_version      = var.rds_engine_version
  instance_class      = var.rds_instance_class
  allocated_storage   = var.rds_allocated_storage
  username            = var.rds_username
  password            = var.rds_password
  skip_final_snapshot = true #required to destroy

  db_subnet_group_name    = var.rds_subnet
  vpc_security_group_ids  = [var.rds_security_group]
  backup_retention_period = var.rds_backup_retention
}

