variable "s3_bucket_name" {
  description = "Name for the db."
  default     = "educationist-files"
  type        = string
}

variable "bucket_sse_alg" {
  description = "SSE algorithm to be used by the bucket."
  default     = "aws:kms"
  type        = string
}

variable "kms_key_deletion_window" {
  description = "The window for the KMS key to be deleted(in days)."
  default     = 10
  type        = number
}

variable "rds_name" {
  description = "Name for the db."
  default     = "educationist_db"
  type        = string
}

variable "rds_username" {
  description = "Username for db."
  default     = "db_admin"
  type        = string
}

variable "rds_password" {
  description = "Password for db."
  default     = "db_passwrd"
  type        = string
}

variable "rds_allocated_storage" {
  description = "Allocated storage for the RDS instance(in GB)."
  default     = 10
  type        = number
}

variable "rds_backup_retention" {
  description = "Backup retention period(in days)."
  default     = 14
  type        = number
}

variable "rds_engine" {
  description = "Engine of the db."
  default     = "mysql"
  type        = string
}

variable "rds_engine_version" {
  description = "Engine version of the db."
  default     = "8.0.35"
  type        = string
}

variable "rds_instance_class" {
  description = "Instance class for the db."
  default     = "db.t3.micro"
  type        = string
}

variable "rds_subnet_group_name" {
  description = "RDS subnet group name."
  type        = string
  default     = "my_rds_subnet_group"
}
