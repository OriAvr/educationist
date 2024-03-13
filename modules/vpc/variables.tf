variable "vpc_cidr" {
  description = "CIDR range for the VPC."
  default     = "10.0.2.0/24"
  type        = string
}

variable "vpc_name" {
  description = "Name for the VPC."
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR range for the public subnet."
  default     = "10.0.0.0/24"
}
variable "private_subnet_cidr" {
  description = "CIDR range for the private subnet."
  default     = "10.0.1.0/24"
}
variable "rds_cidr" {
  description = "CIDR range for the RDS subnet."
  default     = "10.0.2.0/24"
}
