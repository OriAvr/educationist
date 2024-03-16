data "terraform_remote_state" "network_state" {
  backend = "s3"
  config = {
    bucket = "educationist-remote-state"
    key    = "network/terraform.tfstate"
    region = "eu-west-3"
  }
}

module "my_s3_bucket" {
  source                  = "../../../modules/s3"
  bucket_name             = var.s3_bucket_name
  bucket_sse_alg          = var.bucket_sse_alg
  kms_key_deletion_window = var.kms_key_deletion_window
  private_subnet_cidr     = data.terraform_remote_state.network_state.outputs.private_subnet_cidr
}

module "my_db" {
  source                = "../../../modules/rds"
  rds_name              = var.rds_name
  rds_allocated_storage = var.rds_allocated_storage
  rds_backup_retention  = var.rds_backup_retention
  rds_username          = var.rds_username
  rds_password          = var.rds_password

  rds_engine            = var.rds_engine
  rds_engine_version    = var.rds_engine_version
  rds_instance_class    = var.rds_instance_class
  rds_security_group    = aws_security_group.rds_sg.id
  rds_subnet_group_name = var.rds_subnet_group_name
  rds_subnet            = data.terraform_remote_state.network_state.outputs.rds_subnet_id
  private_subnet        = data.terraform_remote_state.network_state.outputs.private_subnet_id
}

