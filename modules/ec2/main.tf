data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}


resource "aws_instance" "this" {
  ami           = data.aws_ami.latest_amazon_linux.id
  instance_type = var.instance_type
  key_name      = var.key_pair

  network_interface {
    network_interface_id = var.network_interface_id
    device_index         = var.network_device_index
  }

  tags = {
    Name = var.instance_name
  }
}
