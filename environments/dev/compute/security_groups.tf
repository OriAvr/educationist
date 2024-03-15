/* data "aws_vpc" "this" {
  tags = {

  }
}*/

resource "aws_security_group" "public_subnet_inbound" {
  name        = "allow_http_ssh"
  description = "Allow incoming http and ssh traffic"
  vpc_id      = data.terraform_remote_state.network_state.outputs.vpc_id

  ingress {
    description = "Allows incoming http"
    from_port   = 0
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allows incoming ssh"
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [data.terraform_remote_state.network_state.outputs.vpc_cidr]
  }
  tags = {
    Name = "allow_http_ssh"
  }
}

resource "aws_security_group" "private_subnet_inbound_outbound" {
  name        = "allow_inbound_outbound"
  description = "Allow incoming traffic from web server and outbound to database"
  vpc_id      = data.terraform_remote_state.network_state.outputs.vpc_id

  ingress {
    description = "Allows incoming ssh"
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [data.terraform_remote_state.network_state.outputs.vpc_cidr]
  }

  tags = {
    Name = "allow_http_ssh"
  }
}
