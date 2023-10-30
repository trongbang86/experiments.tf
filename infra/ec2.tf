resource "tls_private_key" "k8s_ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "k8s_ec2_generated_key" {
  key_name   = var.common.k8s_ec2_key_name
  public_key = tls_private_key.k8s_ec2_key.public_key_openssh
}

resource "aws_instance" "publicEC2" {
  count         = var.common.max_elements
  ami           = "ami-0fa399d9c130ec923"
  instance_type = var.common.instance_type
  subnet_id     = element(aws_subnet.publicSubnets, count.index).id
  key_name      = aws_key_pair.k8s_ec2_generated_key.key_name

  tags = {
    Name = "Public EC2 ${count.index + 1}"
  }
}

