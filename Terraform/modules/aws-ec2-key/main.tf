resource "tls_private_key" "ec2-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key_pair" {
  key_name   = "key_pair"
  public_key = tls_private_key.ec2-key.public_key_openssh
}