resource "aws_internet_gateway" "igw" {
  vpc_id = "vpc-04fb5154d22486542"

  tags = {
    Name = "tutorial-igw"
  }
}
