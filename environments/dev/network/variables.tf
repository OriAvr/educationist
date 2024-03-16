variable "vpc_name" {
  description = "Name for the VPC."
  default     = "main_vpc"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR range for the VPC."
  default     = "10.0.0.0/24"
  type        = string
}

variable "public_route_table_cidr" {
  description = "CIDR range for the public route table."
  type        = string
  default     = "0.0.0.0/0"
}

variable "public_subnet_name" {
  description = "Name for the public subnet."
  type        = string
  default     = "public_subnet"
}

variable "public_subnet_cidr" {
  description = "CIDR range for the public subnet."
  type        = string
  default     = "10.0.0.0/25"
}

variable "private_subnet_name" {
  description = "Name for the private subnet."
  type        = string
  default     = "private_subnet"
}

variable "private_subnet_cidr" {
  description = "CIDR range for the private subnet."
  type        = string
  default     = "10.0.0.128/26"
}

variable "rds_subnet_name" {
  description = "Name for the RDS subnet."
  type        = string
  default     = "rds_subnet"
}

variable "rds_cidr" {
  description = "CIDR range for the RDS subnet."
  type        = string
  default     = "10.0.0.192/26"
}
