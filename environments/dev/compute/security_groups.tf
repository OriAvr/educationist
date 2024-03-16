resource "aws_security_group" "public_subnet_inbound" {
  name        = var.public_subnet_sg
  description = "Allow incoming http and ssh traffic"
  vpc_id      = data.terraform_remote_state.network_state.outputs.vpc_id

  ingress {
    description = "Allows incoming http"
    from_port   = 0
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.public_subnet_http_inbound_cidr]
  }

  ingress {
    description = "Allows incoming ssh"
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [data.terraform_remote_state.network_state.outputs.vpc_cidr]
  }
}

resource "aws_security_group" "private_subnet_inbound" {
  name        = var.private_subnet_sg
  description = "Allow incoming traffic from web server and outbound to database"
  vpc_id      = data.terraform_remote_state.network_state.outputs.vpc_id

  ingress {
    description = "Allows incoming ssh"
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [data.terraform_remote_state.network_state.outputs.vpc_cidr]
  }
}
