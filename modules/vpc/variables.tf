variable "vpc_cidr" {
  description = "CIDR range for the VPC."
  type        = string
}

variable "vpc_name" {
  description = "Name for the VPC."
  type        = string
}

variable "public_route_table_cidr" {
  description = "CIDR range for the public route table."
  type        = string
}

variable "public_subnet_name" {
  description = "Name for the public subnet."
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR range for the public subnet."
  type        = string
}

variable "private_subnet_name" {
  description = "Name for the private subnet."
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR range for the private subnet."
  type        = string
}

variable "rds_subnet_name" {
  description = "Name for the RDS subnet."
  type        = string
}

variable "rds_cidr" {
  description = "CIDR range for the RDS subnet."
  type        = string

}

variable "s3_region" {
  description = "Region of the s3 to be used by the Gateway Endpoint."
  type        = string
}
