resource aws_route_table route_table {
  vpc_id = "vpc-04fb5154d22486542"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0e204fdaad34cae29"
  }
  tags = {
    Name = "tutorial-route-table"
  }
}
