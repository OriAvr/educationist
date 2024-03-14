variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block to allow bucket access from specific subnets."
  type        = string
}
