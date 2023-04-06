resource aws_subnet subnet {
  vpc_id            = "vpc-04fb5154d22486542"
  cidr_block        = "192.168.1.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "tutorial-public-subnet"
  }
}
