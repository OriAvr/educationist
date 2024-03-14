module "network" {
  source = "../network"
}

module "my_s3_bucket" {
  source              = "../../../modules/s3"
  bucket_name         = "educationist-files"
  private_subnet_cidr = module.network.private_subnet_cidr
}

module "my_db" {
  source                = "../../../modules/rds"
  rds_name              = "educationist_db"
  rds_allocated_storage = 10
  rds_backup_retention  = 14
  rds_username          = var.rds_username
  rds_password          = var.rds_password

  rds_engine         = "mysql"
  rds_engine_version = var.rds_engine_version
  rds_instance_class = "db.t3.micro"
  rds_security_group = aws_security_group.rds_sg.id

  rds_subnet = module.network.rds_subnet_id
}

