locals {
  key_name = "demo-linux-21th-july"
}

resource "aws_instance" "webapp-instance" {
  ami           = "ami-0614680123427b75e"
  instance_type = var.webapp-instance-type
  key_name      = local.key_name

  tags = {
    Name = "machine from terraform"
  }
}

resource "aws_eip" "webapp-instance-eip" {
  instance = aws_instance.webapp-instance.id
}
