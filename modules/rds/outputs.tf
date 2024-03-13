output "db_instance_endpoint" {
  description = "The connection endpoint for the RDS instance."
  value       = aws_db_instance.this.endpoint
}

output "db_instance_port" {
  description = "The database port."
  value       = aws_db_instance.this.port
}

output "db_instance_username" {
  description = "The master username for the database."
  value       = aws_db_instance.this.username
}

output "db_instance_arn" {
  description = "The ARN of the RDS instance."
  value       = aws_db_instance.this.arn
}

