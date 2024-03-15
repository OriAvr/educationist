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
  monitoring    = true

  network_interface {
    device_index         = var.network_device_index
    network_interface_id = var.network_interface_id
  }

  tags = {
    Name = var.instance_name
  }
}
