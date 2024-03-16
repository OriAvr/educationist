variable "public_instance_name" {
  description = "Name for the public EC2 instance."
  default     = "public_instance"
  type        = string
}

variable "public_instance_key_pair" {
  description = "Key-pair for the public EC2 instance."
  default     = "pub"
  type        = string
}

variable "private_instance_name" {
  description = "Name for the private EC2 instance."
  default     = "private_instance"
  type        = string
}

variable "private_instance_key_pair" {
  description = "Key-pair for the private EC2 instance."
  default     = "pri"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}

variable "public_subnet_http_inbound_cidr" {
  description = "Allow http to public subnet from this CIDR."
  type        = string
  default     = "0.0.0.0/0"
}

variable "public_subnet_sg" {
  description = "Public subnet's security group name."
  type        = string
  default     = "allow_http_ssh_public_subnet"
}

variable "private_subnet_sg" {
  description = "Private subnet's security group name."
  type        = string
  default     = "allow_ssh_private_subnet"
}
