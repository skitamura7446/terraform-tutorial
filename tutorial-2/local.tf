locals {
  owner             = "tutorial"
  availability_zone = "ap-northeast-1a"

  vpc = {
    cidr_block           = "192.168.0.0/16"
    enable_dns_hostnames = true
    tags = {
      Name = "${local.owner}-vpc"
    }
  }

  internet_gateway = {
    tags = {
      Name = "${local.owner}-igw"
    }
  }

  subnet = {
    cidr_block        = "192.168.1.0/24"
    availability_zone = local.availability_zone
    tags = {
      Name = "${local.owner}-public-subnet"
    }
  }

  route_table = {
    route = {
      cidr_block = "0.0.0.0/0"
    }

    tags = {
      Name = "${local.owner}-route-table"
    }
  }

  security_group = {
    name        = "${local.owner}-security-group"
    description = "Allow SSH inbound traffic from XXX"

    ingress = {
      description = "SSH from XXX"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = [
        "XXX.XXX.XXX.XXX/32",
      ]
    }

    egress = {
      from_port = 0
      to_port   = 0
      protocol  = "-1"
      cidr_blocks = [
        "0.0.0.0/0",
      ]
    }

    tags = {
      Name = "${local.owner}-security-group"
    }
  }

  key = {
    key_name   = "${local.owner}-key"
    public_key = "ssh-rsa XXXXX"
  }

  instance = {
    ami                         = "ami-02a2700d37baeef8b"
    instance_type               = "t2.micro"
    associate_public_ip_address = true

    tags = {
      Name = "${local.owner}-instance"
    }
  }
}
