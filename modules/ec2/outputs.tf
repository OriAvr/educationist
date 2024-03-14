output "instance_id" {
  value = aws_instance.this.id
}

output "instance_public_ip" {
  value = aws_instance.this.public_ip
}

output "instance_private_ip" {
  value = aws_instance.this.private_ip
}

output "instance_security_groups" {
  description = "The list of security group IDs attached to the EC2 instance."
  value       = aws_instance.this.vpc_security_group_ids
}

output "instance_subnet_id" {
  description = "The ID of the subnet in which the EC2 instance is deployed."
  value       = aws_instance.this.subnet_id
}

output "instance_availability_zone" {
  description = "The availability zone in which the EC2 instance is deployed."
  value       = aws_instance.this.availability_zone
}
