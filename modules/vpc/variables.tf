variable "vpc_cidr" {
  description = "CIDR range for the VPC."
  default     = "10.0.0.0/24"
  type        = string
}

variable "vpc_name" {
  description = "Name for the VPC."
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR range for the public subnet."
  default     = "10.0.0.0/25"
}

variable "private_subnet_cidr" {
  description = "CIDR range for the private subnet."
  default     = "10.0.0.128/26"
}

variable "rds_cidr" {
  description = "CIDR range for the RDS subnet."
  default     = "10.0.0.192/26"
}

variable "s3_region" {
  description = "Region of the s3 to be used by the Gateway Endpoint."
  type        = string
}
