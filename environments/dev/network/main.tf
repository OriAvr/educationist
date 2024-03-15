data "aws_region" "current" {}

module "main_vpc" {
  source    = "../../../modules/vpc"
  s3_region = data.aws_region.current.name
}
