variable "rds_name" {
  description = "Database name."
  type        = string
}
variable "rds_engine" {
  description = "Database engine."
  type        = string
  default     = "mysql"
}
variable "rds_instance_class" {
  description = "Database instance class."
  type        = string
  default     = "db.t3.micro"
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
variable "rds_backup_retention" {
  description = "Database backup retention."
  type        = string
}

#variable "rds_subnet" {}
#variable "rds_security_group" {}


