data "terraform_remote_state" "network_state" {
  backend = "s3"
  config = {
    bucket = "educationist-remote-state"
    key    = "network/terraform.tfstate"
    region = "eu-west-3"
  }
}

resource "aws_network_interface" "public_interface" {
  subnet_id       = data.terraform_remote_state.network_state.outputs.public_subnet_id
  security_groups = [aws_security_group.public_subnet_inbound.id]
  tags = {
    Name = "public_eni"
  }
}

module "public_instance" {
  source               = "../../../modules/ec2"
  network_interface_id = aws_network_interface.public_interface.id
  network_device_index = 0
  instance_name        = var.public_instance_name
}

resource "aws_network_interface" "private_interface" {
  subnet_id       = data.terraform_remote_state.network_state.outputs.private_subnet_id
  security_groups = [aws_security_group.private_subnet_inbound_outbound.id]

  tags = {
    Name = "private_eni"
  }
}

module "private_instance" {
  source               = "../../../modules/ec2"
  network_interface_id = aws_network_interface.private_interface.id
  network_device_index = 0
  instance_name        = var.private_instance_name
}
