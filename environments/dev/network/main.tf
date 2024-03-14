data "aws_region" "current" {}

module "main_vpc" {
  source    = "../../../modules/vpc"
  vpc_name  = var.vpc_name
  s3_region = data.aws_region.current.name
}
