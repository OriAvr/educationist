terraform {
  backend "s3" {
    bucket = "educationist-remote-state"
    key    = "storage/terraform.tfstate"
    region = "eu-west-3"
  }
}
