resource aws_instance instance {
  ami                         = "ami-02a2700d37baeef8b"
  instance_type               = "t2.micro"
  subnet_id                   = "subnet-0bf5661c57db0d425"
  associate_public_ip_address = true
  key_name                    = "tutorial-key"
  vpc_security_group_ids      = ["sg-09e5b29077cb81637"]

  tags = {
    Name = "tutorial-instance"
  }
}
