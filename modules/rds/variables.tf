variable "rds_name" {
  description = "Database name."
  type        = string
}

variable "rds_subnet_group_name" {
  description = "RDS subnet group name."
  type        = string
}

variable "rds_engine" {
  description = "Database engine."
  type        = string
}

variable "rds_engine_version" {
  description = "Database engine version."
  type        = string
}

variable "rds_instance_class" {
  description = "Database instance class."
  type        = string
}

variable "rds_allocated_storage" {
  description = "Database storage capacity."
  type        = string
}

variable "rds_username" {
  description = "Database username."
  type        = string
}

variable "rds_password" {
  description = "Database password."
  type        = string
}

variable "rds_subnet" {
  description = "The DB subnet name for the RDS instance."
  type        = string
}

variable "private_subnet" {
  description = "The private subnet name for the RDS instance."
  type        = string
}

variable "rds_security_group" {
  description = "Database security group association."
  type        = string
}

variable "rds_backup_retention" {
  description = "Database backup retention period(in days)."
  type        = number
}

