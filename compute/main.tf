resource "aws_network_interface" "public_interface" {
  subnet_id       = module.aws_subnet.public_subnet.id
  security_groups = [aws_security_group.public_subnet_inbound.id]
}

module "public_instance" {
  source               = "../modules/ec2"
  network_interface_id = aws_network_interface.public_interface.id
  network_device_index = 0
  instance_name        = var.public_instance_name
  key_pair             = var.public_instance_key_pair
}

resource "aws_network_interface" "private_interface" {
  subnet_id       = module.aws_subnet.private_subnet.id
  security_groups = [aws_security_group.private_subnet_inbound_outbound]
}

module "private_instance" {
  source               = "../modules/ec2"
  network_interface_id = aws_network_interface.private_interface.id
  network_device_index = 1
  instance_name        = var.private_instance_name
  key_pair             = var.private_instance_key_pair
}
