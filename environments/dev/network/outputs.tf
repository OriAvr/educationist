output "vpc_id" {
  value = module.main_vpc.vpc_id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.main_vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = module.main_vpc.private_subnet_id
}

output "public_subnet_cidr" {
  description = "The ID of the private subnet"
  value       = module.main_vpc.public_subnet_cidr
}

output "private_subnet_cidr" {
  description = "The ID of the private subnet"
  value       = module.main_vpc.private_subnet_cidr
}

output "rds_subnet_id" {
  value = module.main_vpc.rds_subnet_id
}
