module "my_s3_bucket" {
  source = "./modules/s3"

  bucket_name = "my-unique-bucket-name"
  acl         = "private"
}
