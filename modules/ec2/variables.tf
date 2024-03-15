variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  description = "Instance name tag."
  type        = string
}

variable "network_interface_id" {
  description = "Network interface id for attachment."
  type        = string
}

variable "network_device_index" {
  description = "Network device index."
  type        = number
}

