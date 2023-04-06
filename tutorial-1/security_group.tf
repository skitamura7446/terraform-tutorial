resource "aws_security_group" "tutorial-sg" {
  name        = "tutorial-security-group"
  description = "Allow SSH inbound traffic from XXX"
  vpc_id      = "vpc-04fb5154d22486542"

  ingress {
    description = "SSH from XXX"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["XXX.XXX.XXX.XXX/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "tutorial-security-group"
  }
}
