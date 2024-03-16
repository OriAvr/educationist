variable "rds_username" {
  default = "db_admin"
}
variable "rds_password" {
  default = "db_passwrd"
}

data "terraform_remote_state" "network_state" {
  backend = "s3"
  config = {
    bucket = "educationist-remote-state"
    key    = "network/terraform.tfstate"
    region = "eu-west-3"
  }
}

module "my_s3_bucket" {
  source              = "../../../modules/s3"
  bucket_name         = "educationist-files"
  private_subnet_cidr = data.terraform_remote_state.network_state.outputs.private_subnet_cidr
}

module "my_db" {
  source                = "../../../modules/rds"
  rds_name              = "educationist_db"
  rds_allocated_storage = 10
  rds_backup_retention  = 14
  rds_username          = var.rds_username
  rds_password          = var.rds_password

  rds_engine         = "mysql"
  rds_engine_version = "8.0.35"
  rds_instance_class = "db.t3.micro"
  rds_security_group = aws_security_group.rds_sg.id

  rds_subnet     = data.terraform_remote_state.network_state.outputs.rds_subnet_id
  private_subnet = data.terraform_remote_state.network_state.outputs.private_subnet_id
}

