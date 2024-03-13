module "my_s3_bucket" {
  source      = "../modules/s3"
  bucket_name = "educationist-files"
  acl         = "private"
}

module "my_db" {
  source                = "../modules/rds"
  rds_name              = "educationist_db"
  rds_allocated_storage = 10
  rds_backup_retention  = 14
  rds_username          = var.rds_username
  rds_password          = var.rds_password

  #rds_engine = "mysql"
  #rds_instance_class    = "db.t3.micro"
  #rds_security_group =

  #rds_subnet = var.rds_subnet
  #rds_cidr              = var.rds_cidr
}
