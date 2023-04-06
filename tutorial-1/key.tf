resource "aws_key_pair" "tutorial_key" {
  key_name   = "tutorial-key"
  public_key = "ssh-rsa AAXXXXX"
}
