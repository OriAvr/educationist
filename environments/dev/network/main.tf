data "aws_region" "current" {}

module "main_vpc" {
  source                  = "../../../modules/vpc"
  vpc_name                = var.vpc_name
  vpc_cidr                = var.vpc_cidr
  public_route_table_cidr = var.public_route_table_cidr
  public_subnet_name      = var.public_subnet_name
  public_subnet_cidr      = var.public_subnet_cidr
  private_subnet_name     = var.private_subnet_name
  private_subnet_cidr     = var.private_subnet_cidr
  rds_subnet_name         = var.rds_subnet_name
  rds_cidr                = var.rds_cidr
  s3_region               = data.aws_region.current.name
}
